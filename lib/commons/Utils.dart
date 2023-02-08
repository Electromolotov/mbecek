import 'package:intl/intl.dart';

class Utils {
  static String toDate(DateTime dateTime) {
    final date = DateFormat.yMMMEd().format(dateTime);
    return '$date';
  }

  static String toTime(DateTime dateTime) {
    final time = DateFormat.Hm().format(dateTime);
    return '$time';
  }

  static List<int> toHourAndMinute(String interval) {
    final times = interval.split('-');
    final endTime = times[1].trim();
    final hour = int.parse(endTime.split('h')[0]);
    final minute = int.parse(endTime.split('h')[1].replaceFirst('min', ''));
    return [hour, minute];
  }

  static String toDay(int day) {
    if (day == 1) {
      return 'Monday';
    } else if (day == 2) {
      return 'Tuesday';
    } else if (day == 3) {
      return 'Wednesday';
    } else if (day == 4) {
      return 'Thursday';
    } else if (day == 5) {
      return 'Friday';
    } else if (day == 6) {
      return 'Saturday';
    } else {
      return 'Sunday';
    }
  }

  static String toMonth(int month) {
    if (month == 1) {
      return 'January';
    } else if (month == 2) {
      return 'February';
    } else if (month == 3) {
      return 'March';
    } else if (month == 4) {
      return 'April';
    } else if (month == 5) {
      return 'May';
    } else if (month == 6) {
      return 'June';
    } else if (month == 7) {
      return 'July';
    } else if (month == 8) {
      return 'August';
    } else if (month == 9) {
      return 'September';
    } else if (month == 10) {
      return 'October';
    } else if (month == 11) {
      return 'November';
    } else {
      return 'December';
    }
  }

  static int toIntDay(String day) {
    if (day == 'Monday') {
      return 1;
    } else if (day == 'Tuesday') {
      return 2;
    } else if (day == 'Wednesday') {
      return 3;
    } else if (day == 'Thursday') {
      return 4;
    } else if (day == 'Friday') {
      return 5;
    } else if (day == 'Saturday') {
      return 6;
    } else {
      return 7;
    }
  }

  static int toIntMonth(String month) {
    if (month == 'January') {
      return 1;
    } else if (month == 'February') {
      return 2;
    } else if (month == 'March') {
      return 3;
    } else if (month == 'April') {
      return 4;
    } else if (month == 'May') {
      return 5;
    } else if (month == 'June') {
      return 6;
    } else if (month == 'July') {
      return 7;
    } else if (month == 'August') {
      return 8;
    } else if (month == 'September') {
      return 9;
    } else if (month == 'October') {
      return 10;
    } else if (month == 'November') {
      return 11;
    } else {
      return 12;
    }
  }
}
