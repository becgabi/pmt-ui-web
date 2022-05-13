import 'package:auto_route/auto_route.dart';
import 'package:fbase_auth_test/app/menu/menu_bloc.dart';
import 'package:fbase_auth_test/app/menu/menu_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PmtNavigatorObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    route.navigator?.context
        .read<MenuBloc>()
        .add(MenuPushed(routeName: route.settings.name));
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    route.navigator?.context
        .read<MenuBloc>()
        .add(MenuPushed(routeName: previousRoute?.settings.name));
  }
}
