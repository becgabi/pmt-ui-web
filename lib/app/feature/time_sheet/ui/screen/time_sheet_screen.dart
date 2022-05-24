import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:fbase_auth_test/app/core/ui/widget/pmt_progress_indicator.dart';
import 'package:fbase_auth_test/app/feature/colleague/repository/colleague_repository.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_repository.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/bloc/time_sheet_cubit.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/bloc/time_sheet_state.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/repository/time_sheet_repository.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/ui/component/time_sheet_item_list.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/ui/component/time_sheet_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeSheetScreen extends StatelessWidget {
  static const route = '/time-sheet';
  static const title = 'Time sheet';
  static const permissions = [
    Permission.TIME_SHEET_VIEW,
    Permission.TIME_SHEET_EDIT
  ];

  const TimeSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimeSheetCubit(
        RepositoryProvider.of<TimeSheetRepository>(context),
        RepositoryProvider.of<ProjectRepository>(context),
        RepositoryProvider.of<ColleagueRepository>(context),
      )..init(),
      child: BlocConsumer<TimeSheetCubit, TimeSheetState>(
        listener: (context, state) =>
            state.status.statusChangeListener(context),
        buildWhen: (previous, current) =>
            previous.status.inProgressChanged(current.status),
        builder: (_, state) => PmtScaffold(
          body: state.status.isInProgress()
              ? const PmtProgressIndicator()
              : SingleChildScrollView(
                  controller: ScrollController(),
                  child: Column(
                    children: [
                      const TimeSheetSelector(),
                      SizedBox(height: Config.defaultPadding),
                      const TimeSheetItemList(),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
