import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:fbase_auth_test/app/feature/files/ui/components/recent_files.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const route = "/dashboard";
  static const title = "Dashboard";

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PmtScaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Column(
              children: [
                SizedBox(height: Config.defaultPadding),
                const RecentFiles(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
