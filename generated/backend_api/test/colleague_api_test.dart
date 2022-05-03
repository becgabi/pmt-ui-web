import 'package:test/test.dart';
import 'package:backend_api/backend_api.dart';


/// tests for ColleagueApi
void main() {
  final instance = BackendApi().getColleagueApi();

  group(ColleagueApi, () {
    // Create an colleague
    //
    //Future<IdentifierResponse> create(Colleague colleague) async
    test('test create', () async {
      // TODO
    });

    // Delete an colleague
    //
    //Future delete(int id) async
    test('test delete', () async {
      // TODO
    });

    // Get colleagues filtered by an optional name parameter (if parameter is given it act as a like filter)
    //
    //Future<BuiltList<Colleague>> findColleague({ String name }) async
    test('test findColleague', () async {
      // TODO
    });

    // Get the colleague identified by JWT auth token
    //
    //Future<Colleague> getByAuthToken() async
    test('test getByAuthToken', () async {
      // TODO
    });

    // Get an colleague
    //
    //Future<Colleague> getOne(int id) async
    test('test getOne', () async {
      // TODO
    });

    // Update an colleague
    //
    //Future update(int id, Colleague colleague) async
    test('test update', () async {
      // TODO
    });

  });
}
