import 'package:intl/intl.dart';

class DateTimeClass {
  DateTime now = DateTime.now();
  DateFormat weekdayFormat = DateFormat('EEEE');

  String formattedDate = DateFormat.yMMMd().format(DateTime.now());
  String formattedMonthDay = DateFormat(DateFormat.ABBR_MONTH_DAY).format(DateTime.now());
  String formattedTime = DateFormat.jm().format(DateTime.now());
  String formattedWeekday = DateFormat('EEEE').format(DateTime.now());
  String Nextday = DateFormat('EEEE').format(DateTime.now().add(const Duration(days: 1)));

  String getNextFormattedWeekday() {
    DateTime nextDate = now.add(const Duration(days: 1));
    String formattedWeekday = weekdayFormat.format(nextDate);
    return formattedWeekday;
  }

  String getNextWeekdayDate(int weekdayNumber) {
    int daysUntilNextWeekday = (weekdayNumber - now.weekday + 7) % 7;
    DateTime nextWeekday = now.add(Duration(days: daysUntilNextWeekday));
    String formattedNextWeekday = DateFormat.yMMMd().format(nextWeekday);
    return formattedNextWeekday;
  }

  String nextSundayDate() {
    return getNextWeekdayDate(DateTime.sunday);
  }

  String nextMondayDate() {
    return getNextWeekdayDate(DateTime.monday);
  }

  String nextTuesdayDate() {
    return getNextWeekdayDate(DateTime.tuesday);
  }

  String nextWednesdayDate() {
    return getNextWeekdayDate(DateTime.wednesday);
  }

  String nextThursdayDate() {
    return getNextWeekdayDate(DateTime.thursday);
  }

  String nextFridayDate() {
    return getNextWeekdayDate(DateTime.friday);
  }

  String nextSaturdayDate() {
    return getNextWeekdayDate(DateTime.saturday);
  }
}
