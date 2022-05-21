import 'package:auto_route/auto_route.dart';
import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/extension/datetime.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  final List<Partner> partners;

  const ProjectCard({Key? key, required this.project, required this.partners})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final partner =
        partners.where((element) => element.id == project.partnerId).first;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.router.push(ProjectDetailRoute(
          project: project,
          partners: partners,
          id: project.id!,
        )),
        child: Card(
          child: Column(
            children: [
              SizedBox(height: Config.defaultPadding),
              Text(
                project.name,
                style: const TextStyle(fontSize: 20.0),
              ),
              // Image.memory(partner.logo, height: 150),
              Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
              ),
              Text(partner.name),
              Text(project.phase.name),
              Text("Start: " + project.projectStart.formatDate()),
              Text("Finish: " + project.projectEnd.formatDate()),
            ],
          ),
        ),
      ),
    );
  }
}
