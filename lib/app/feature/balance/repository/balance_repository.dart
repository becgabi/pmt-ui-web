import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/extension/response.dart';

class BalanceRepository {
  final BalanceApi api;

  BalanceRepository(this.api);

  Future<List<BalanceItem>> getAll() => api.getAll().parseResponseList();

  Future<List<BalanceItem>> getAllFiltered() =>
      api.getAllFiltered().parseResponseList();

  Future<BalanceItem?> getOne(int id) =>
      api.getOne(id: id).parseNullableResponse();

  Future<int> create(BalanceItem balanceItem) => api
      .create(balanceItem: balanceItem)
      .parseResponse()
      .then((idResponse) => idResponse.id!);

  Future<void> update(BalanceItem balanceItem) =>
      api.update(id: balanceItem.id!, balanceItem: balanceItem);

  Future<void> delete(int id) => api.delete(id: id);

  Future<void> approve(int id) => api.approve(id: id);

  Future<void> reject(int id) => api.reject(id: id);
}
