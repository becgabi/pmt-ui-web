import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/extension/response.dart';

class PartnerRepository {
  final PartnerApi api;

  PartnerRepository(this.api);

  Future<List<Partner>> getAll() => api.getAll().parseResponseList();
}
