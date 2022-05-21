import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:fbase_auth_test/app/feature/partner/repository/partner_repository.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_list_cubit.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_repository.dart';
import 'package:fbase_auth_test/app/feature/project/ui/component/project_filter.dart';
import 'package:fbase_auth_test/app/feature/project/ui/component/project_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectListScreen extends StatelessWidget {
  static const route = '/projects';
  static const title = 'Projects';
  static const permissions = [Permission.PROJECT_VIEW];

  const ProjectListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectListCubit(
          projectRepository: RepositoryProvider.of<ProjectRepository>(context),
          partnerRepository: RepositoryProvider.of<PartnerRepository>(context)),
      child: PmtScaffold(
        body: Column(
          children: [
            const ProjectFilter(),
            SizedBox(height: Config.defaultPadding),
            const ProjectGrid(),
          ],
        ),
      ),
    );
  }
}
