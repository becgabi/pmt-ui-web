import 'package:test/test.dart';
import 'package:backend_api/backend_api.dart';


/// tests for PartnerApi
void main() {
  final instance = BackendApi().getPartnerApi();

  group(PartnerApi, () {
    // Create new partner
    //
    //Future<IdentifierResponse> create(Partner partner) async
    test('test create', () async {
      // TODO
    });

    // Delete a partner
    //
    //Future delete(int id) async
    test('test delete', () async {
      // TODO
    });

    // Get all partners
    //
    //Future<BuiltList<Partner>> getAll() async
    test('test getAll', () async {
      // TODO
    });

    // Get a single partner
    //
    //Future<Partner> getOne(int id) async
    test('test getOne', () async {
      // TODO
    });

    // Update a partner
    //
    //Future update(int id, Partner partner) async
    test('test update', () async {
      // TODO
    });

  });
}
