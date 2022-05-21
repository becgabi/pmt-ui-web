import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/extension/response.dart';

class ColleagueRepository {
  final ColleagueApi api;

  ColleagueRepository(this.api);

  Future<List<Colleague>> findAll() =>
      api.findColleague(name: "").parseResponseList();

  Future<Colleague> getOne(int id) => api.getOne(id: id).parseResponse();

  Future<Colleague> getByAuthToken() => api.getByAuthToken().parseResponse();

  Future<int> create(Colleague colleague) => api
      .create(colleague: colleague)
      .parseResponse()
      .then((idResponse) => idResponse.id!);

  Future<void> update(Colleague colleague) =>
      api.update(id: colleague.id!, colleague: colleague);

  Future<void> delete(int id) => api.delete(id: id);
}
