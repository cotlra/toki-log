import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/post.dart';
import '../theme/common_dimens.dart';
import '../util/context_extension.dart';
import '../util/time_utils.dart';
import 'theme_text.dart';

class PostCard extends StatefulWidget {
  const PostCard({
    required this.post,
    required this.level,
    super.key,
    this.isReplying = false,
    this.onReplyPressed,
    this.onEditSave,
    this.onDeletePressed,
  });

  final Post post;
  final bool isReplying;
  final ValueChanged<String>? onReplyPressed;
  final ValueChanged<(String, String)>? onEditSave;
  final ValueChanged<String>? onDeletePressed;
  final int level;

  @override
  State<PostCard> createState() => _PostCardState();

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<Post>('post', post))
      ..add(DiagnosticsProperty<bool>('isReplying', isReplying))
      ..add(
        ObjectFlagProperty<ValueChanged<String>?>.has(
          'onReplyPressed',
          onReplyPressed,
        ),
      )
      ..add(
        ObjectFlagProperty<ValueChanged<(String, String)>?>.has(
          'onEditSave',
          onEditSave,
        ),
      )
      ..add(IntProperty('level', level))
      ..add(
        ObjectFlagProperty<ValueChanged<String>?>.has(
          'onDeletePressed',
          onDeletePressed,
        ),
      );
  }
}

class _PostCardState extends State<PostCard> {
  var _isEditing = false;
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.post.content);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final formattedDate = TimeUtils.dateTimeFormat.format(
      widget.post.createdAt,
    );

    if (widget.post.isDeleted) {
      // Deleted post view remains the same
      return DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: context.colors.outlineVariant),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: StyleValue.v1 * widget.level),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: context.colors.outlineVariant,
                  width: widget.level == 0 ? 0 : StyleValue.v0_75,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsConst.a0_75().copyWith(
                left:
                    StyleValue.v0_75 +
                    (widget.level == 0 ? 0 : StyleValue.v0_75),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyLargeText(
                    context.l10n.thisPostIsDeleted,
                    style: TextStyle(color: context.colors.onSurfaceVariant),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        color: widget.isReplying ? context.colors.surfaceContainer : null,
        border: Border(
          bottom: BorderSide(color: context.colors.outlineVariant),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: StyleValue.v1 * widget.level),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: context.colors.outlineVariant,
                width: widget.level == 0 ? 0 : StyleValue.v0_75,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsConst.a0_75().copyWith(
              left:
                  StyleValue.v0_75 + (widget.level == 0 ? 0 : StyleValue.v0_75),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_isEditing)
                  TextField(
                    controller: _textController,
                    autofocus: true,
                    maxLines: null,
                  )
                else
                  BodyLargeText(widget.post.content),
                FixedSpacer.h0_5(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (_isEditing) ...[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _isEditing = false;
                            _textController.text = widget.post.content;
                          });
                        },
                        child: Text(context.l10n.cancel),
                      ),
                      FixedSpacer.w0_5(),
                      TextButton(
                        onPressed: () {
                          widget.onEditSave?.call((
                            widget.post.id,
                            _textController.text,
                          ));
                          setState(() {
                            _isEditing = false;
                          });
                        },
                        child: Text(context.l10n.save),
                      ),
                    ] else ...[
                      BodySmallText(formattedDate),
                      FixedSpacer.w0_5(),
                      IconButton(
                        icon: const Icon(Icons.reply, size: 18),
                        onPressed: widget.onReplyPressed != null
                            ? () => widget.onReplyPressed!(widget.post.id)
                            : null,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        tooltip: context.l10n.reply,
                      ),
                      FixedSpacer.w0_5(),
                      IconButton(
                        icon: const Icon(Icons.edit, size: 18),
                        onPressed: () {
                          setState(() {
                            _isEditing = true;
                          });
                        },
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        tooltip: context.l10n.edit,
                      ),
                      FixedSpacer.w0_5(),
                      IconButton(
                        icon: const Icon(Icons.delete, size: 18),
                        onPressed: widget.onDeletePressed != null
                            ? () => widget.onDeletePressed!(widget.post.id)
                            : null,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        tooltip: context.l10n.delete,
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<Post>('post', widget.post))
      ..add(DiagnosticsProperty<bool>('isReplying', widget.isReplying))
      ..add(
        ObjectFlagProperty<ValueChanged<String>?>.has(
          'onReplyPressed',
          widget.onReplyPressed,
        ),
      )
      ..add(IntProperty('level', widget.level))
      ..add(
        ObjectFlagProperty<ValueChanged<(String, String)>?>.has(
          'onEditSave',
          widget.onEditSave,
        ),
      );
  }
}
