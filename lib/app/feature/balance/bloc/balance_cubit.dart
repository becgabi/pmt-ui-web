import 'package:backend_api/backend_api.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fbase_auth_test/app/core/data/item_status.dart';
import 'package:fbase_auth_test/app/feature/balance/repository/balance_repository.dart';
import 'package:fbase_auth_test/app/feature/colleague/repository/colleague_repository.dart';

part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  final BalanceRepository repository;
  final ColleagueRepository colleagueRepository;

  BalanceCubit(this.repository, this.colleagueRepository)
      : super(const BalanceState.initial());

  void selectColleague(Colleague selectedColleague) async {
    final original = state;
    emit(const BalanceState.inProgress(ItemStatus.loading));
    try {
      final colleague = (await colleagueRepository.getByAuthToken());
      final balanceItems = await repository.getAllFiltered();
      final debtList = _getDebtList(balanceItems, selectedColleague);
      final creditList = _getCreditList(balanceItems, selectedColleague);
      final balance = _calculateBalance(creditList, debtList);
      emit(BalanceState.progressEnded(debtList, creditList, balance, colleague,
          selectedColleague, ItemStatus.loaded));
    } on Exception catch (e) {
      print(e);
      emit(const BalanceState.failed());
      emit(original);
    }
  }

  Future<void> save(BalanceItem item) async {
    final original = state;
    emit(const BalanceState.inProgress(ItemStatus.saving));
    try {
      item.id != null
          ? await repository.update(item)
          : await repository.create(item);
      emit(BalanceState.progressEndedFromState(original, ItemStatus.saved));
      selectColleague(original.selectedColleague!);
    } on Exception catch (e) {
      print(e);
      emit(const BalanceState.failed());
      emit(original);
    }
  }

  Future<void> delete(int id) async {
    final original = state;
    emit(const BalanceState.inProgress(ItemStatus.deleting));
    try {
      await repository.delete(id);
      emit(BalanceState.progressEndedFromState(original, ItemStatus.deleted));
      selectColleague(original.selectedColleague!);
    } on Exception catch (e) {
      print(e);
      emit(const BalanceState.failed());
      emit(original);
    }
  }

  int _calculateBalance(
          List<BalanceItem> creditList, List<BalanceItem> debtList) =>
      creditList.map((e) => e.value).sum - debtList.map((e) => e.value).sum;

  List<BalanceItem> _getCreditList(
          List<BalanceItem> balanceItems, Colleague colleague) =>
      balanceItems.where((item) => item.debitor == colleague).toList();

  List<BalanceItem> _getDebtList(
          List<BalanceItem> balanceItems, Colleague colleague) =>
      balanceItems.where((item) => item.creditor == colleague).toList();
}
