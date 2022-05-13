import 'package:auto_route/auto_route.dart';
import 'package:fbase_auth_test/app/core/auth/bloc/auth_bloc.dart';
import 'package:fbase_auth_test/app/core/auth/config/permission_config.dart';
import 'package:fbase_auth_test/app/core/extension/build_context.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthorizationGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final context = router.navigatorKey.currentContext;
    if (_isAuthorized(resolver, context)) {
      resolver.next(true);
    } else {
      context?.showErrorSnackBar("Unauthorized");
      router.push(const DashboardRoute());
    }
  }

  bool _isAuthorized(NavigationResolver resolver, BuildContext? context) {
    final permissionsNeeded = routePermissions[resolver.route.name];
    final authState = context?.read<AuthBloc>().state;
    return permissionsNeeded == null ||
        authState is Authenticated &&
            (permissionsNeeded.isEmpty ||
                permissionsNeeded
                    .toSet()
                    .intersection(authState.permissions.toSet())
                    .isNotEmpty);
  }
}
