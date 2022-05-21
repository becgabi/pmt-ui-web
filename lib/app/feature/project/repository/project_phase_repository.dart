import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/extension/response.dart';

class ProjectPhaseRepository {
  final ProjectPhaseApi api;

  ProjectPhaseRepository(this.api);

  Future<List<ProjectPhase>> findByProject(int id) =>
      api.findByProject(id: id).parseResponseList();

  Future<ProjectPhase> findById(int id) => api.findById(id: id).parseResponse();

  Future<int> create(ProjectPhase projectPhase) => api
      .create(projectPhase: projectPhase)
      .parseResponse()
      .then((idResponse) => idResponse.id!);

  Future<void> update(ProjectPhase projectPhase) =>
      api.update(id: projectPhase.id!, projectPhase: projectPhase);

  Future<void> delete(int id) => api.delete(id: id);
}
