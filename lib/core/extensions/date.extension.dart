import 'package:intl/intl.dart';

/// Date extension
extension DateExtension on DateTime {
  /// Date without time
  String get formatDateWithoutTime => DateFormat('yyyy-MM-dd').format(this);

  /// Date without time
  DateTime get dateWithoutTime => DateTime(year, month, day);

  /// Date with day name
  String get dateWithDayName => DateFormat('EEEE dd MMMM').format(this);

  /// Is same date
  bool isSameDate(DateTime other) =>
      year == other.year && month == other.month && day == other.day;

  /// Is after or equal
  bool isAfterOrEqual(DateTime other) =>
      isAfter(other) || isAtSameMomentAs(other);

  /// Is before or equal
  bool isBeforeOrEqual(DateTime other) =>
      isBefore(other) || isAtSameMomentAs(other);
}
