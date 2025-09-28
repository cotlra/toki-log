import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TimeDiffOverlay extends StatelessWidget {
  const TimeDiffOverlay({required this.start, required this.end, super.key});

  final Offset? start;
  final Offset? end;

  @override
  Widget build(final BuildContext context) {
    return IgnorePointer(
      child: CustomPaint(
        painter: _TimeDiffPainter(
          start: start,
          end: end,
          color: Theme.of(context).colorScheme.primary,
          // color: Theme.of(context).primaryColor,
        ),
        size: Size.infinite,
      ),
    );
  }

  @override
  void debugFillProperties(final DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<Offset?>('start', start))
      ..add(DiagnosticsProperty<Offset?>('end', end));
  }
}

class _TimeDiffPainter extends CustomPainter {
  _TimeDiffPainter({
    required this.start,
    required this.end,
    required this.color,
  });

  final Offset? start;
  final Offset? end;
  final Color color;

  @override
  void paint(final Canvas canvas, final Size size) {
    if (start == null || end == null) {
      return;
    }

    final circleEnd = Offset(start!.dx, end!.dy);

    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.5
      ..style = PaintingStyle.fill;

    // Draw circles
    canvas
      ..drawCircle(start!, 4, paint)
      ..drawCircle(circleEnd, 4, paint)
      // Draw line
      ..drawLine(start!, circleEnd, paint);
  }

  @override
  bool shouldRepaint(covariant final _TimeDiffPainter oldDelegate) {
    return oldDelegate.start != start || oldDelegate.end != end;
  }
}
