import 'package:backend_api/backend_api.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/data/list_status.dart';
import 'package:fbase_auth_test/app/core/extension/datetime.dart';
import 'package:fbase_auth_test/app/core/ui/widget/pmt_progress_indicator.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_phase_cubit.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_phase_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectPhaseList extends StatelessWidget {
  const ProjectPhaseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectPhaseListCubit, ProjectPhaseListState>(
      listener: (context, state) => state.status.statusChangeListener(context),
      buildWhen: (previous, current) =>
          previous.projectPhases != current.projectPhases,
      builder: (context, state) => Stack(
        children: [
          _buildTable(context, state),
          if ([ListStatus.loading].contains(state.status))
            const PmtProgressIndicator(),
        ],
      ),
    );
  }

  _buildTable(BuildContext context, ProjectPhaseListState state) {
    _loadFirstItem(context, state);
    return Container(
      padding: EdgeInsets.all(Config.defaultPadding),
      decoration: BoxDecoration(
        color: Config.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Project phases", style: Theme.of(context).textTheme.subtitle1),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: Config.defaultPadding,
              minWidth: 600,
              columns: const [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Description")),
                DataColumn(label: Text("Phase type")),
                DataColumn(label: Text("Phase start")),
                DataColumn(label: Text("Phase end")),
                DataColumn(label: Text("Deadline")),
              ],
              rows: List.generate(
                state.projectPhases.length,
                (index) => _buildDataRow(context, state.projectPhases[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow _buildDataRow(BuildContext context, ProjectPhase projectPhase) {
    return DataRow2(
      cells: [
        DataCell(Text(projectPhase.name)),
        DataCell(Text(projectPhase.description ?? "")),
        DataCell(Text(projectPhase.phaseType?.name ?? "")),
        DataCell(Text(projectPhase.phaseStart.formatDate())),
        DataCell(Text(projectPhase.phaseEnd.formatDate())),
        DataCell(Text(projectPhase.deadline.formatDate())),
      ],
      onTap: () {
        BlocProvider.of<ProjectPhaseCubit>(context).loadData(projectPhase);
      },
    );
  }

  void _loadFirstItem(BuildContext context, ProjectPhaseListState state) {
    if (state.projectPhases.isNotEmpty) {
      BlocProvider.of<ProjectPhaseCubit>(context)
          .loadData(state.projectPhases.first);
    }
  }
}
