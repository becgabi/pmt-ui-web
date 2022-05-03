import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/ui/layout/responsive.dart';
import 'package:fbase_auth_test/app/core/ui/layout/header.dart';
import 'package:fbase_auth_test/app/core/ui/layout/side_menu.dart';
import 'package:fbase_auth_test/app/menu/menu_bloc.dart';
import 'package:fbase_auth_test/app/menu/menu_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PmtScaffold extends StatelessWidget {
  final Widget body;

  const PmtScaffold({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
        builder: (BuildContext context, state) {
      return Scaffold(
        drawer: (!Responsive.isDesktop(context)) ? const SideMenu() : null,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(flex: 1, child: SideMenu()),
              WorkSpace(body: body),
            ],
          ),
        ),
      );
    });
  }
}

class WorkSpace extends StatelessWidget {
  const WorkSpace({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(Config.defaultPadding),
            child: Column(
              children: [
                const Header(),
                SizedBox(height: Config.defaultPadding),
                Expanded(child: body),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
