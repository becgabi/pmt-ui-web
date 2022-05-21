import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/cubit/pmt_form_state.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/config.dart';
import '../../bloc/colleague_details_cubit.dart';
import '../../bloc/colleague_selector_cubit.dart';
import '../../repository/colleague_repository.dart';
import '../component/colleague_details.dart';
import '../component/colleague_filter.dart';

class ColleagueScreen extends StatelessWidget {
  static const route = '/colleagues';
  static const title = 'Colleagues';
  static const permissions = [
    Permission.COLLEAGUE_VIEW,
    Permission.COLLEAGUE_EDIT
  ];

  const ColleagueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => ColleagueSelectorCubit(
                repository:
                    RepositoryProvider.of<ColleagueRepository>(context))),
        BlocProvider(
            create: (context) => ColleagueDetailsCubit(
                RepositoryProvider.of<ColleagueRepository>(context))),
      ],
      child: BlocListener<ColleagueDetailsCubit, PmtFormState>(
        listener: (context, state) =>
            state.status.statusChangeListener(context),
        child: PmtScaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ColleagueFilter(),
              SizedBox(height: Config.defaultPadding),
              Row(children: [
                const Expanded(child: ColleagueDetails()),
                Expanded(flex: 2, child: Container()),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
