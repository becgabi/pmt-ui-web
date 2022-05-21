import 'package:backend_api/backend_api.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat('yyyy.MM.dd');

extension DateTimeUtil on DateTime {
  DateTime dayStart() => DateTime(year, month, day);

  DateTime dayEnd() => DateTime(year, month, day, 23, 59, 59);

  String formatDate() {
    return formatter.format(this);
  }
}

extension DateUtil on Date? {
  String formatDate() {
    final dateTime = this?.toDateTime();
    return dateTime == null ? "N/A" : formatter.format(dateTime);
  }
}
