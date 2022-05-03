import 'package:test/test.dart';
import 'package:backend_api/backend_api.dart';


/// tests for ProjectPhaseApi
void main() {
  final instance = BackendApi().getProjectPhaseApi();

  group(ProjectPhaseApi, () {
    // Create new project phase
    //
    //Future<IdentifierResponse> create(ProjectPhase projectPhase) async
    test('test create', () async {
      // TODO
    });

    // Delete project phase
    //
    //Future delete(int id) async
    test('test delete', () async {
      // TODO
    });

    // Get project phase by id
    //
    //Future<ProjectPhase> findById(int id) async
    test('test findById', () async {
      // TODO
    });

    // Get project phases of given project
    //
    //Future<BuiltList<ProjectPhase>> findByProject(int id) async
    test('test findByProject', () async {
      // TODO
    });

    // Update project phase
    //
    //Future update(int id, ProjectPhase projectPhase) async
    test('test update', () async {
      // TODO
    });

  });
}
