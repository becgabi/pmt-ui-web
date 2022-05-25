import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/data/item_status.dart';
import 'package:fbase_auth_test/app/core/extension/int.dart';
import 'package:fbase_auth_test/app/core/ui/widget/pmt_progress_indicator.dart';
import 'package:fbase_auth_test/app/core/ui/widget/rounded_box.dart';
import 'package:fbase_auth_test/app/feature/balance/bloc/balance_cubit.dart';
import 'package:fbase_auth_test/app/feature/balance/ui/component/balance_item_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BalanceItemList extends StatelessWidget {
  const BalanceItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BalanceCubit, BalanceState>(
      listener: (context, state) => state.status.statusChangeListener(context),
      buildWhen: (previous, current) =>
          previous.status.inProgressChanged(current.status),
      builder: (context, state) => state.status.isInProgress()
          ? const PmtProgressIndicator()
          : (state.status != ItemStatus.loaded
              ? Container()
              : RoundedBox(
                  child: Column(
                    children: [
                      _buildBalanceTitle(state),
                      SizedBox(height: Config.defaultPadding),
                      Row(children: [
                        _buildHeader(context, 'Add Credit',
                            _getCreditBalanceItem(state)),
                        _buildHeader(
                            context, 'Add Debt', _getDebtBalanceItem(state)),
                      ]),
                      const Divider(color: Colors.white, thickness: 1),
                      IntrinsicHeight(
                        child: Row(children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                  children: _getCreditList(context, state))),
                          const VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                            width: 1,
                          ),
                          Expanded(
                              flex: 1,
                              child: Column(
                                  children: _getDebtList(context, state))),
                        ]),
                      ),
                    ],
                  ),
                )),
    );
  }

  Center _buildBalanceTitle(BalanceState state) => Center(
          child: Wrap(
        children: [
          const Text('Balance: ', style: TextStyle(fontSize: 20)),
          Text(
            state.balance.formatCurrencyHuf(),
            style: TextStyle(
              fontSize: 20,
              color: state.balance < 0 ? Colors.red : Colors.green,
            ),
          ),
        ],
      ));

  Expanded _buildHeader(BuildContext context, String text, BalanceItem item) =>
      Expanded(
          flex: 1,
          child: Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                _buildText(text),
                SizedBox(width: Config.defaultPadding),
                IconButton(
                    onPressed: () => showDialog(
                        context: context,
                        builder: (_) => BalanceItemDialog(
                              text: text,
                              item: item,
                              cubit: context.read<BalanceCubit>(),
                            )),
                    icon: const Icon(Icons.add))
              ],
            ),
          ));

  Text _buildText(String text) =>
      Text(text, style: const TextStyle(fontSize: 18));

  List<Widget> _getCreditList(BuildContext context, BalanceState state) => state
      .creditList
      .map((e) => _buildBalanceText(context, e, Colors.green, 'Modify Credit'))
      .toList();

  List<Widget> _getDebtList(BuildContext context, BalanceState state) => state
      .debtList
      .map((e) => _buildBalanceText(context, e, Colors.red, 'Modify Debt'))
      .toList();

  Center _buildBalanceText(
          BuildContext context, BalanceItem item, Color color, String text) =>
      Center(
        child: Tooltip(
          message: item.comment ?? '',
          child: InkWell(
            onTap: () => showDialog(
                context: context,
                builder: (_) => BalanceItemDialog(
                      text: text,
                      item: item,
                      cubit: context.read<BalanceCubit>(),
                    )),
            child: Text(item.title + ': ' + item.value.formatCurrencyHuf(),
                style: TextStyle(fontSize: 18, color: color)),
          ),
        ),
      );

  BalanceItem _getCreditBalanceItem(BalanceState state) => BalanceItem((b) => b
    ..value = 0
    ..title = ''
    ..creditor = state.colleague!.toBuilder()
    ..debitor = state.selectedColleague!.toBuilder());

  BalanceItem _getDebtBalanceItem(BalanceState state) => BalanceItem((b) => b
    ..value = 0
    ..title = ''
    ..creditor = state.selectedColleague!.toBuilder()
    ..debitor = state.colleague!.toBuilder());
}
