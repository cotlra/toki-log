import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../theme/common_dimens.dart';
import '../util/context_extension.dart';
import '../util/time_utils.dart';

class DurationTooltip extends StatelessWidget {
  const DurationTooltip({required this.duration, super.key});
  final Duration duration;

  @override
  Widget build(final BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadiusConst.br1().copyWith(
        topLeft: RadiusConst.r0_25(),
      ),
      child: Container(
        padding: EdgeInsetsConst.y0_5().withX0_75(),
        decoration: BoxDecoration(
          color: context.colors.primary,
          borderRadius: BorderRadiusConst.br1().copyWith(
            topLeft: RadiusConst.r0_25(),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.schedule,
              color: context.colors.onPrimary,
              size: StyleValue.v1,
            ),
            FixedSpacer.w0_25(),
            Text(
              TimeUtils.formatDuration(duration),
              style: TextStyle(color: context.colors.onPrimary),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Duration>('duration', duration));
  }
}
