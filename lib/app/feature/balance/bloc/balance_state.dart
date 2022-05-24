part of 'balance_cubit.dart';

class BalanceState extends Equatable {
  final List<BalanceItem> debtList;
  final List<BalanceItem> creditList;
  final ItemStatus status;
  final int balance;
  final Colleague? colleague;
  final Colleague? selectedColleague;

  const BalanceState.initial()
      : debtList = const [],
        creditList = const [],
        status = ItemStatus.uninitialized,
        balance = 0,
        colleague = null,
        selectedColleague = null;

  const BalanceState.inProgress(this.status)
      : debtList = const [],
        creditList = const [],
        balance = 0,
        colleague = null,
        selectedColleague = null;

  const BalanceState.progressEnded(this.debtList, this.creditList, this.balance,
      this.colleague, this.selectedColleague, this.status);

  BalanceState.progressEndedFromState(BalanceState state, this.status)
      : debtList = state.debtList,
        creditList = state.creditList,
        balance = state.balance,
        colleague = state.colleague,
        selectedColleague = state.selectedColleague;

  const BalanceState.failed()
      : debtList = const [],
        creditList = const [],
        status = ItemStatus.failed,
        balance = 0,
        colleague = null,
        selectedColleague = null;

  @override
  List<Object?> get props =>
      [debtList, creditList, status, balance, colleague, selectedColleague];
}
