import 'package:intl/intl.dart';

abstract class TimeUtils {
  TimeUtils._();

  static final dateTimeFormat = DateFormat('yyyy/MM/dd HH:mm');
  static final dateFormat = DateFormat('yyyy/MM/dd');

  static String formatDuration(final Duration duration) {
    if (duration.inMinutes < 1) {
      return '1分未満';
    }

    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;

    final parts = <String>[];
    if (days > 0) {
      parts.add('$days日');
    }
    if (hours > 0) {
      parts.add('$hours時間');
    }
    if (minutes > 0) {
      parts.add('$minutes分');
    }

    return parts.join();
  }
}
