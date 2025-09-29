import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/post.dart';
import '../service/storage_service.dart';
import '../theme/common_dimens.dart';
import '../util/context_extension.dart';
import '../util/time_utils.dart';
import '../widget/post_card.dart';
import '../widget/post_input_bar.dart';
import '../widget/theme_text.dart';
import '../widget/time_diff_overlay.dart';
import '../widget/time_tooltip.dart';

// Helper class to hold a post and its depth in the reply chain
class _TimelineItem {
  _TimelineItem(this.post, this.level);

  final Post post;
  final int level;
}

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  final _storageService = StorageService();

  List<Post> _posts = []; // Master list of all posts
  Map<String, Post> _postsById = {}; // For quick lookup
  List<Object> _listItems =
      []; // Can hold _TimelineItem or DateTime for headers
  var _isLoading = true;
  String? _replyingToPostId;

  // State for time visualization
  var _isCtrlPressed = false;
  String? _basePostId;
  String? _targetPostId;
  String? _hoveredPostId;
  final Map<String, GlobalKey> _postKeys = {};
  final GlobalKey _stackKey = GlobalKey();
  final GlobalKey<PostInputBarState> _inputBarKey = GlobalKey();
  final _inputFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    HardwareKeyboard.instance.addHandler(_handleRawKeyEvent);
    unawaited(_loadPosts());
  }

  @override
  void dispose() {
    HardwareKeyboard.instance.removeHandler(_handleRawKeyEvent);
    _inputFocusNode.dispose();
    super.dispose();
  }

  Future<void> _loadPosts() async {
    final posts = await _storageService.readPosts();
    setState(() {
      _posts = posts;
      _postsById = {for (final p in _posts) p.id: p};
      _buildTimelineItems();
      _isLoading = false;
    });
  }

  bool _hasVisibleDescendants(
    final String postId,
    final Map<String?, List<Post>> postsByParent,
  ) {
    final children = postsByParent[postId] ?? [];
    if (children.isEmpty) {
      return false;
    }

    for (final child in children) {
      if (!child.isDeleted) {
        return true;
      }
      if (_hasVisibleDescendants(child.id, postsByParent)) {
        return true;
      }
    }

    return false;
  }

  void _buildTimelineItems() {
    final items = <Object>[];
    final postsByParent = <String?, List<Post>>{};
    for (final post in _posts) {
      postsByParent.putIfAbsent(post.parentId, () => []).add(post);
      _postKeys.putIfAbsent(post.id, GlobalKey.new); // Ensure key exists
    }

    for (final children in postsByParent.values) {
      children.sort((final a, final b) => a.createdAt.compareTo(b.createdAt));
    }

    final rootPosts = postsByParent[null] ?? []
      ..sort((final a, final b) => b.createdAt.compareTo(a.createdAt));

    DateTime? lastDate;

    void addPosts(final List<Post> posts, final int level) {
      for (final post in posts) {
        // If the post is deleted and has no visible descendants, skip it.
        if (post.isDeleted && !_hasVisibleDescendants(post.id, postsByParent)) {
          continue;
        }

        if (level == 0) {
          final postDate = DateUtils.dateOnly(post.createdAt);
          if (lastDate == null || !DateUtils.isSameDay(postDate, lastDate)) {
            items.add(postDate); // Add date object as a header item
            lastDate = postDate;
          }
        }

        items.add(_TimelineItem(post, level));
        final replies = postsByParent[post.id] ?? [];
        if (replies.isNotEmpty) {
          addPosts(replies, level + 1);
        }
      }
    }

    addPosts(rootPosts, 0);
    _listItems = items;
  }

  void _handleReply(final String postId) {
    setState(() {
      _replyingToPostId = (_replyingToPostId == postId) ? null : postId;
      if (_replyingToPostId != null) {
        _inputFocusNode.requestFocus();
      }
    });
  }

  Future<void> _addPost(final String content) async {
    final newPost = Post.create(content: content, parentId: _replyingToPostId);

    setState(() {
      _posts.add(newPost);
      _postsById[newPost.id] = newPost;
      _buildTimelineItems();
      _replyingToPostId = null;
    });

    await _storageService.writePosts(_posts);
  }

  Future<void> _handleEditPost(final (String, String) data) async {
    final (postId, newContent) = data;
    await _storageService.updatePost(postId, newContent);
    await _loadPosts(); // Reload posts to reflect changes
  }

  Future<void> _handleDeletePost(final String postId) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (final context) => AlertDialog(
        title: Text(context.l10n.deletePost),
        content: Text(context.l10n.deletePostConfirmation),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(context.l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: context.colors.error),
            child: Text(context.l10n.delete),
          ),
        ],
      ),
    );

    if (confirmed ?? false) {
      await _markPostAsDeleted(postId);
    }
  }

  Future<void> _markPostAsDeleted(final String postId) async {
    setState(() {
      final post = _postsById[postId];
      if (post != null) {
        final deletedPost = post.copyWith(isDeleted: true);
        _postsById[postId] = deletedPost;
        _posts = _posts
            .map((final p) => p.id == postId ? deletedPost : p)
            .toList();
        _buildTimelineItems();
      }
    });

    await _storageService.writePosts(_posts);
  }

  bool _handleRawKeyEvent(final KeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.controlLeft ||
        event.logicalKey == LogicalKeyboardKey.controlRight ||
        event.logicalKey == LogicalKeyboardKey.meta) {
      if (event is KeyDownEvent && !_isCtrlPressed) {
        setState(() {
          _isCtrlPressed = true;
          _basePostId = _hoveredPostId;
          _targetPostId = _hoveredPostId;
        });
      } else if (event is KeyUpEvent && _isCtrlPressed) {
        setState(() {
          _isCtrlPressed = false;
          _basePostId = null;
          _targetPostId = null;
        });
      }
    } else if (event.logicalKey == LogicalKeyboardKey.slash) {
      if (event is KeyDownEvent) {
        if (!_inputFocusNode.hasFocus) {
          _inputFocusNode.requestFocus();
          return true;
        }
      }
    }
    return false;
  }

  void _onPostEnter(final String postId) {
    setState(() {
      _hoveredPostId = postId;
    });
    if (!_isCtrlPressed) {
      return;
    }
    setState(() {
      _targetPostId = postId;
      _basePostId ??= postId;
    });
  }

  Offset? _getPostCenter(final String? postId) {
    if (postId == null) {
      return null;
    }
    final key = _postKeys[postId];
    if (key?.currentContext == null) {
      return null;
    }

    final stackBox = _stackKey.currentContext?.findRenderObject() as RenderBox?;
    if (stackBox == null) {
      return null;
    }

    final box = key!.currentContext!.findRenderObject()! as RenderBox;
    final globalPosition = box.localToGlobal(Offset.zero);
    final localPosition = stackBox.globalToLocal(globalPosition);

    return localPosition + Offset(box.size.width / 2, box.size.height / 2);
  }

  Widget _buildTooltip() {
    if (_basePostId == null ||
        _targetPostId == null ||
        _basePostId == _targetPostId) {
      return const SizedBox.shrink();
    }

    final basePost = _postsById[_basePostId!];
    final targetPost = _postsById[_targetPostId!];
    final endOffset = _getPostCenter(_targetPostId);

    if (basePost == null || targetPost == null || endOffset == null) {
      return const SizedBox.shrink();
    }

    final duration = targetPost.createdAt.difference(basePost.createdAt).abs();

    return Positioned(
      left: endOffset.dx + StyleValue.v1,
      top: endOffset.dy,
      child: IgnorePointer(child: DurationTooltip(duration: duration)),
    );
  }

  @override
  Widget build(final BuildContext context) {
    final startOffset = _getPostCenter(_basePostId);
    final endOffset = _getPostCenter(_targetPostId);

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.tokiLog)),
      body: Column(
        children: [
          PostInputBar(
            key: _inputBarKey,
            onSubmitted: _addPost,
            focusNode: _inputFocusNode,
          ),
          if (_replyingToPostId != null)
            ColoredBox(
              color: context.colors.surfaceContainerHigh,
              child: Padding(
                padding: EdgeInsetsConst.x1().withY0_25(),
                child: Row(
                  children: [
                    Expanded(child: Text(context.l10n.replying)),
                    IconButton(
                      icon: const Icon(Icons.close, size: 18),
                      onPressed: () => setState(() => _replyingToPostId = null),
                    ),
                  ],
                ),
              ),
            ),
          Divider(
            height: 1,
            thickness: 1,
            color: context.colors.outlineVariant,
          ),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : Stack(
                    key: _stackKey,
                    children: [
                      ListView.builder(
                        itemCount: _listItems.length,
                        itemBuilder: (final context, final index) {
                          final item = _listItems[index];

                          if (item is DateTime) {
                            return Container(
                              padding: EdgeInsetsConst.x0_75().withY0_25(),
                              color: context.colors.secondaryContainer,
                              child: LabelMediumText(
                                TimeUtils.dateFormat.format(item),
                                style: TextStyle(
                                  color: context.colors.onSecondaryContainer,
                                ),
                              ),
                            );
                          }

                          if (item is _TimelineItem) {
                            return MouseRegion(
                              onEnter: (_) => _onPostEnter(item.post.id),
                              child: PostCard(
                                key: _postKeys[item.post.id],
                                post: item.post,
                                isReplying: item.post.id == _replyingToPostId,
                                onReplyPressed: _handleReply,
                                onEditSave: _handleEditPost,
                                onDeletePressed: _handleDeletePost,
                                level: item.level,
                              ),
                            );
                          }

                          return const SizedBox.shrink();
                        },
                      ),
                      if (_isCtrlPressed)
                        TimeDiffOverlay(start: startOffset, end: endOffset),
                      if (_isCtrlPressed) _buildTooltip(),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
