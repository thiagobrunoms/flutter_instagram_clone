import 'package:intl/intl.dart';

class DateTimeParsers {
  static String fromDateTimeToStrCompleteDate(DateTime dateTime) {
    Duration duration = DateTime.now().difference(dateTime);

    int inDays = duration.inDays;
    if (inDays <= 1) {
      int inMinutes = duration.inMinutes;
      if (duration.inMinutes < 60) {
        return 'Há $inMinutes ${inMinutes > 1 ? 'minutos' : 'minuto'}';
      }

      int inHours = duration.inHours;
      return 'Há $inHours ${inHours > 1 ? 'horas' : 'hora'}';
    } else if (inDays <= 7) {
      return 'Há $inDays dias';
    } else if (dateTime.year == DateTime.now().year) {
      return DateFormat('MMMM d').format(dateTime);
    }

    return DateFormat.yMMMMd().format(dateTime);
  }

  static String fromDateTimeToShortStrDayOrWeek(DateTime dateTime) {
    Duration duration = DateTime.now().difference(dateTime);

    int inDays = duration.inDays;
    if (inDays <= 1) {
      int inMinutes = duration.inMinutes;
      if (duration.inMinutes < 60) {
        return '$inMinutes min';
      }

      int inHours = duration.inHours;
      return '$inHours h';
    } else if (inDays <= 7) {
      return '$inDays d';
    }

    return '${inDays ~/ 7} sem';
  }
}

// void main() {
//   DateTime d = DateTime.now().subtract(Duration(days: 190));
//   String formatted = DateTimeParsers._fromDateTimeToStrCompleteDate(d);
//   print(formatted);
// }
