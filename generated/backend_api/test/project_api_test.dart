import 'package:test/test.dart';
import 'package:backend_api/backend_api.dart';


/// tests for ProjectApi
void main() {
  final instance = BackendApi().getProjectApi();

  group(ProjectApi, () {
    // Create new project
    //
    //Future<IdentifierResponse> create(Project project) async
    test('test create', () async {
      // TODO
    });

    // Delete project
    //
    //Future delete(int id) async
    test('test delete', () async {
      // TODO
    });

    // Get all projects
    //
    //Future<BuiltList<Project>> findAll({ DateTime from, DateTime to }) async
    test('test findAll', () async {
      // TODO
    });

    // Get project by id
    //
    //Future<Project> findById(int id) async
    test('test findById', () async {
      // TODO
    });

    // Get projects of given partner
    //
    //Future<BuiltList<Project>> findByPartner(int id) async
    test('test findByPartner', () async {
      // TODO
    });

    // Update project
    //
    //Future update(int id, Project project) async
    test('test update', () async {
      // TODO
    });

  });
}
