import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/extension/response.dart';

class ProjectRepository {
  final ProjectApi api;

  ProjectRepository(this.api);

  Future<List<Project>> findAll(DateTime? dateFrom, DateTime? dateTo) =>
      api.findAll(from: dateFrom, to: dateTo).parseResponseList();

  Future<List<Project>> findByPartner(int id) =>
      api.findByPartner(id: id).parseResponseList();

  Future<Project> findById(int id) => api.findById(id: id).parseResponse();

  Future<int> create(Project project) => api
      .create(project: project)
      .parseResponse()
      .then((idResponse) => idResponse.id!);

  Future<void> update(Project project) =>
      api.update(id: project.id!, project: project);

  Future<void> delete(int id) => api.delete(id: id);
}
