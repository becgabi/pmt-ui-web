import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const route = "/dashboard";
  static const title = "Dashboard";

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PmtScaffold(body: Container());
  }
}
