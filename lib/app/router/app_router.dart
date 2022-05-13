import 'package:auto_route/auto_route.dart';
import 'package:fbase_auth_test/app/core/auth/ui/sign_in_screen.dart';
import 'package:fbase_auth_test/app/feature/files/ui/dashboard_screen.dart';
import 'package:fbase_auth_test/app/feature/profile/ui/profile_screen.dart';
import 'package:fbase_auth_test/app/router/guards/authentication_guard.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(path: SignInScreen.route, page: SignInScreen, initial: true),
    AutoRoute(
        path: ProfileScreen.route,
        page: ProfileScreen,
        guards: [AuthenticationGuard]),
    AutoRoute(path: '*', page: DashboardScreen, guards: [AuthenticationGuard]),
  ],
)
class $AppRouter {}
