import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/post.dart';
import '../theme/common_dimens.dart';
import '../util/context_extension.dart';
import '../util/time_utils.dart';
import 'theme_text.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    required this.post,
    required this.level,
    super.key,
    this.isReplying = false,
    this.onReplyPressed,
    this.onDeletePressed,
  });

  final Post post;
  final bool isReplying;
  final ValueChanged<String>? onReplyPressed;
  final ValueChanged<String>? onDeletePressed;
  final int level;

  @override
  Widget build(final BuildContext context) {
    final formattedDate = TimeUtils.dateTimeFormat.format(post.createdAt);

    if (post.isDeleted) {
      return DecoratedBox(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: context.colors.outlineVariant),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: StyleValue.v1 * level),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: context.colors.outlineVariant,
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
        color: isReplying ? context.colors.surfaceContainer : null,
        border: Border(
          bottom: BorderSide(color: context.colors.outlineVariant),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: StyleValue.v1 * level),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: context.colors.outlineVariant,
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
                BodyLargeText(post.content),
                FixedSpacer.h0_5(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BodySmallText(formattedDate),
                    FixedSpacer.w0_5(),
                    IconButton(
                      icon: const Icon(Icons.reply, size: 18),
                      onPressed: onReplyPressed != null
                          ? () => onReplyPressed!(post.id)
                          : null,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      tooltip: context.l10n.reply,
                    ),
                    FixedSpacer.w0_5(),
                    IconButton(
                      icon: const Icon(Icons.delete, size: 18),
                      onPressed: onDeletePressed != null
                          ? () => onDeletePressed!(post.id)
                          : null,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      tooltip: context.l10n.delete,
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
      ..add(IntProperty('level', level))
      ..add(
        ObjectFlagProperty<ValueChanged<String>?>.has(
          'onDeletePressed',
          onDeletePressed,
        ),
      );
  }
}
