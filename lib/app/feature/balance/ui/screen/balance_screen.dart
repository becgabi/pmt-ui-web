import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:fbase_auth_test/app/feature/balance/bloc/balance_cubit.dart';
import 'package:fbase_auth_test/app/feature/balance/repository/balance_repository.dart';
import 'package:fbase_auth_test/app/feature/balance/ui/component/balance_item_list.dart';
import 'package:fbase_auth_test/app/feature/colleague/repository/colleague_repository.dart';
import 'package:fbase_auth_test/app/feature/colleague/ui/component/colleague_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BalanceScreen extends StatelessWidget {
  static const route = '/balance';
  static const title = 'Balance';
  static const permissions = [Permission.BALANCE_VIEW, Permission.BALANCE_EDIT];

  const BalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BalanceCubit(
          RepositoryProvider.of<BalanceRepository>(context),
          RepositoryProvider.of<ColleagueRepository>(context)),
      child: PmtScaffold(
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              ColleagueFilter(
                onChanged: (context, selected) =>
                    context.read<BalanceCubit>().selectColleague(selected),
                filterCurrentColleague: true,
              ),
              SizedBox(height: Config.defaultPadding),
              const BalanceItemList(),
            ],
          ),
        ),
      ),
    );
  }
}
