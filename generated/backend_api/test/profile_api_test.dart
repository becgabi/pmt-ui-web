import 'package:test/test.dart';
import 'package:backend_api/backend_api.dart';


/// tests for ProfileApi
void main() {
  final instance = BackendApi().getProfileApi();

  group(ProfileApi, () {
    // Get the profile of the authenticated users
    //
    //Future<Profile> findByIdToken() async
    test('test findByIdToken', () async {
      // TODO
    });

  });
}
