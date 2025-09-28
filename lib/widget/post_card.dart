import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/post.dart';
import '../theme/common_dimens.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    required this.post,
    required this.level,
    super.key,
    this.isReplying = false,
    this.onReplyPressed,
  });

  final Post post;
  final bool isReplying;
  final ValueChanged<String>? onReplyPressed;
  final int level;

  @override
  Widget build(final BuildContext context) {
    final formattedDate = DateFormat('yyyy/MM/dd HH:mm').format(post.createdAt);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: isReplying
            ? Theme.of(context).colorScheme.surfaceContainer
            : null,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: StyleValue.v1 * level),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant,
                width: level == 0 ? 0 : StyleValue.v0_75,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsConst.a0_75().copyWith(
              left: StyleValue.v0_75 + (level == 0 ? 0 : StyleValue.v0_75),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.content,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      formattedDate,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      icon: const Icon(Icons.reply, size: 18),
                      onPressed: onReplyPressed != null
                          ? () => onReplyPressed!(post.id)
                          : null,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      tooltip: '返信',
                    ),
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
      ..add(DiagnosticsProperty<Post>('post', post))
      ..add(DiagnosticsProperty<bool>('isReplying', isReplying))
      ..add(
        ObjectFlagProperty<ValueChanged<String>?>.has(
          'onReplyPressed',
          onReplyPressed,
        ),
      )
      ..add(IntProperty('level', level));
  }
}
