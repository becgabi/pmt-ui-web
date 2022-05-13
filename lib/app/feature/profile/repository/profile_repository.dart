import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/extension/response.dart';

class ProfileRepository {
  final ProfileApi api;

  ProfileRepository(this.api);

  // Mock result with an API call
  Future<List<Profile>> findAll() async =>
      [await api.findByIdToken().parseResponse()];
}
