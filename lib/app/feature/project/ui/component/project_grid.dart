import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/extension/permission.dart';
import 'package:fbase_auth_test/app/core/ui/widget/add_card.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_list_cubit.dart';
import 'package:fbase_auth_test/app/feature/project/ui/component/project_card.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectListCubit, ProjectListState>(
        builder: (context, state) {
      return Expanded(
        child: GridView.builder(
          itemCount: state.projects.length + 1,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
          ),
          itemBuilder: (context, index) => index != state.projects.length
              ? _buildProjectCard(state, index)
              : (context.hasRight(Permission.PROJECT_EDIT)
                  ? _buildAddCard(context, state)
                  : Container()),
        ),
      );
    });
  }

  AddCard _buildAddCard(BuildContext context, ProjectListState state) {
    return AddCard(
      route: ProjectDetailRoute(
        project: BlocProvider.of<ProjectListCubit>(context).newProject(),
        partners: state.partners,
        id: "new",
      ),
    );
  }

  ProjectCard _buildProjectCard(ProjectListState state, int index) {
    return ProjectCard(
      partners: state.partners,
      project: state.projects[index],
    );
  }
}
