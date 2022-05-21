import 'package:backend_api/backend_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fbase_auth_test/app/core/extension/response.dart';
import 'package:intl/intl.dart';

class CalendarRepository {
  final CalendarApi api;

  CalendarRepository(this.api);

  Future<CalendarData> getCalendarData(int year) {
    return api.getCalendarData(year: year).parseResponse();
  }

  Future<List<DateTime>> getAbsences(int year) {
    return api
        .getAbsences(year: year)
        .parseResponse()
        .then((res) => res.map((e) => DateTime.parse(e)).toList());
  }

  Future<void> saveAbsences(int year, List<DateTime> absences) {
    final absencesAsStrings =
        absences.map((e) => DateFormat('yyyy-MM-dd').format(e)).toList();
    return api.saveAbsences(year: year, requestBody: BuiltList(absencesAsStrings));
  }
}
