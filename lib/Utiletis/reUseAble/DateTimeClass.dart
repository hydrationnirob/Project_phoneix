import 'package:intl/intl.dart';

class DateTimeClass {

  DateTime now = DateTime.now();
   String formattedDate = DateFormat.yMMMd().format(DateTime.now());
   String formattedMonthDay = DateFormat(DateFormat.ABBR_MONTH_DAY).format(DateTime.now()); // Jan 26
   String formattedWeekday = DateFormat(DateFormat.WEEKDAY).format(DateTime.now()); // Tuesday
   String formattedTime = DateFormat.jm().format(DateTime.now()); // 11:00 AM



   String NextDayCount(int DayCount)
   {
     String formatteNextday = DateFormat(DateFormat.WEEKDAY).format(DateTime.now().add( Duration(days: DayCount)));
     return formatteNextday;
   }

  String NextSundayDate() {
    // Calculate the number of days to the next Sunday (assuming Sunday is the last day of the week).
    int daysUntilNextSunday = 7 - now.weekday;

    // If today is already Sunday, we want to get the next Sunday, so add 7 more days.
    if (daysUntilNextSunday == 0) {
      //daysUntilNextSunday = 7;
      DateTime.now();
    }

    // Calculate the next Sunday's date by adding the days to the current date.
    DateTime nextSunday = now.add(Duration(days: daysUntilNextSunday));

    // Format the date in your desired format.
    String formattedNextSunday = DateFormat.yMMMd().format(nextSunday);
    return formattedNextSunday;
  }

  String NextMondayDate() {
    // Calculate the number of days until the next Monday (assuming Monday is the first day of the week).
    int daysUntilNextMonday = 8 - now.weekday;

    // If today is Monday, we want to get the next Monday, so add 7 more days.
    if (daysUntilNextMonday == 1) {
      DateTime.now();
    }

    // Calculate the next Monday's date by adding the days to the current date.
    DateTime nextMonday = now.add(Duration(days: daysUntilNextMonday));

    // Format the date in your desired format.
    String formattedNextMonday = DateFormat.yMMMd().format(nextMonday);
    return formattedNextMonday;
  }

  String NextTuesdayDate() {
    // Calculate the number of days until the next Monday (assuming Monday is the first day of the week).
    int daysUntilNextMonday = 9 - now.weekday;

    // If today is Monday, we want to get the next Monday, so add 7 more days.
    if (daysUntilNextMonday == 2) {
      DateTime.now();
    }

    // Calculate the next Monday's date by adding the days to the current date.
    DateTime nextMonday = now.add(Duration(days: daysUntilNextMonday));

    // Format the date in your desired format.
    String formattedNextMonday = DateFormat.yMMMd().format(nextMonday);
    return formattedNextMonday;
  }


  String NextWednesdayDate() {
    // Calculate the number of days until the next Monday (assuming Monday is the first day of the week).
    int daysUntilNextMonday = 10 - now.weekday;

    // If today is Monday, we want to get the next Monday, so add 7 more days.
    if (daysUntilNextMonday == 3) {
      DateTime.now();
    }

    // Calculate the next Monday's date by adding the days to the current date.
    DateTime nextMonday = now.add(Duration(days: daysUntilNextMonday));

    // Format the date in your desired format.
    String formattedNextMonday = DateFormat.yMMMd().format(nextMonday);
    return formattedNextMonday;
  }


  String NextthursdayDate() {
    // Calculate the number of days until the next Monday (assuming Monday is the first day of the week).
    int daysUntilNextMonday = 11 - now.weekday;

    // If today is Monday, we want to get the next Monday, so add 7 more days.
    if (daysUntilNextMonday == 4) {
      DateTime.now();
    }

    // Calculate the next Monday's date by adding the days to the current date.
    DateTime nextMonday = now.add(Duration(days: daysUntilNextMonday));

    // Format the date in your desired format.
    String formattedNextMonday = DateFormat.yMMMd().format(nextMonday);
    return formattedNextMonday;
  }
  String getNextFormattedWeekday() {
    DateTime now = DateTime.now();
    DateTime nextDate = now.add(Duration(days: 1)); // Get the next date by adding one day
    String formattedWeekday = DateFormat('EEEE').format(nextDate); // Format the weekday as 'Tuesday'
    return formattedWeekday;
  }





}

