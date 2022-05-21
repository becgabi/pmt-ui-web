import 'package:fbase_auth_test/app/feature/project/bloc/project_phase_cubit.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_phase_list_cubit.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_phase_repository.dart';
import 'package:fbase_auth_test/app/feature/project/ui/component/project_phase_form.dart';
import 'package:fbase_auth_test/app/feature/project/ui/component/project_phase_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectPhaseTab extends StatelessWidget {
  final int projectId;

  const ProjectPhaseTab({Key? key, required this.projectId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => ProjectPhaseListCubit(
                repository:
                    RepositoryProvider.of<ProjectPhaseRepository>(context))
              ..load(projectId)),
        BlocProvider(
            create: (context) => ProjectPhaseCubit(
                repository:
                    RepositoryProvider.of<ProjectPhaseRepository>(context))
              ..initForm(projectId)),
      ],
      child: Row(
        children: [
          const Expanded(flex: 19, child: ProjectPhaseList()),
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 10, child: ProjectPhaseForm(projectId: projectId)),
        ],
      ),
    );
  }
}
