import 'package:auto_route/auto_route.dart';
import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/cubit/pmt_form_state.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:fbase_auth_test/app/core/ui/widget/pmt_progress_indicator.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_detail_cubit.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_repository.dart';
import 'package:fbase_auth_test/app/feature/project/ui/component/project_detail_form.dart';
import 'package:fbase_auth_test/app/feature/project/ui/component/project_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectDetailScreen extends StatelessWidget {
  static const route = '/projects/:id';
  static const title = 'Project';
  static const permissions = [Permission.PROJECT_VIEW, Permission.PROJECT_EDIT];

  final Project project;
  final List<Partner> partners;

  const ProjectDetailScreen(
      {@PathParam('id') dynamic id,
      required this.project,
      required this.partners,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProjectDetailCubit(
            repository: RepositoryProvider.of<ProjectRepository>(context))
          ..loadData(project),
        child: BlocConsumer<ProjectDetailCubit, PmtFormState>(
          listener: (context, state) =>
              state.status.statusChangeListener(context),
          buildWhen: (previous, current) =>
              previous.status.inProgressChanged(current.status),
          builder: (_, state) => PmtScaffold(
            body: Stack(
              children: [
                SingleChildScrollView(
                  controller: ScrollController(),
                  child: Column(
                    children: [
                      ProjectDetailForm(
                        project: project,
                        partners: partners,
                      ),
                      SizedBox(height: Config.defaultPadding),
                      if (project.id != null) ProjectTab(projectId: project.id!)
                    ],
                  ),
                ),
                if (state.status.isInProgress()) const PmtProgressIndicator()
              ],
            ),
          ),
        ));
  }
}
