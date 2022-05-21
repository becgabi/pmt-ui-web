import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/extension/response.dart';

class TimeSheetRepository {
  final TimeSheetApi api;

  TimeSheetRepository(this.api);

  Future<TimeSheet?> find(int colleagueId, Date workedDate) => api
      .findByWorkedDateAndColleague(id: colleagueId, day: workedDate)
      .parseNullableResponse();

  Future<int> create(TimeSheet timeSheet) => api
      .create(timeSheet: timeSheet)
      .parseResponse()
      .then((idResponse) => idResponse.id!);

  Future<void> update(TimeSheet timeSheet) =>
      api.update(id: timeSheet.id!, timeSheet: timeSheet);

  Future<void> delete(int id) => api.delete(id: id);
}
