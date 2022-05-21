import 'package:fbase_auth_test/app/core/ui/widget/rounded_box.dart';
import 'package:fbase_auth_test/app/feature/project/ui/component/project_phase_tab.dart';
import 'package:flutter/material.dart';

class ProjectTab extends StatelessWidget {
  final int projectId;

  const ProjectTab({Key? key, required this.projectId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: DefaultTabController(
        length: 1,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: "Phases"),
                // Tab(text: "Assignment"), // TODO: implement
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              height: 450,
              child: TabBarView(
                children: [
                  ProjectPhaseTab(projectId: projectId),
                  // AssignedColleagues(), // TODO: implement
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
