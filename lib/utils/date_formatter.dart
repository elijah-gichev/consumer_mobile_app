import 'package:intl/intl.dart';

class DateFormater {
  static String formatMMMM(DateTime date) {
    final DateFormat formatter = DateFormat.MMMM();
    return formatter.format(date);
  }

  // static String formatDMMMMYYYY(DateTime date) {
  //   final DateFormat formatter = DateFormat.();
  //   return formatter.format(date);
  // }

  static String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat.yMMMMd();
    return formatter.format(date);
  }

  static String formatMY(DateTime date) {
    final DateFormat formatter = DateFormat.yMMM();
    return formatter.format(date);
  }

  static String formatDM(DateTime date) {
    final DateFormat formatter = DateFormat("dd.MM");
    return formatter.format(date);
  }
}
