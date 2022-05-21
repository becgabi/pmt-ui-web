import 'package:auto_route/auto_route.dart';
import 'package:fbase_auth_test/app/core/auth/ui/sign_in_screen.dart';
import 'package:fbase_auth_test/app/feature/files/ui/dashboard_screen.dart';
import 'package:fbase_auth_test/app/feature/project/ui/screen/project_detail_screen.dart';
import 'package:fbase_auth_test/app/feature/project/ui/screen/project_list_screen.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/ui/screen/time_sheet_screen.dart';
import 'package:fbase_auth_test/app/router/guards/authentication_guard.dart';
import 'package:fbase_auth_test/app/router/guards/authorization_guard.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(path: SignInScreen.route, page: SignInScreen, initial: true),
    AutoRoute(
        path: ProjectListScreen.route,
        page: ProjectListScreen,
        guards: [AuthenticationGuard, AuthorizationGuard]),
    AutoRoute(
        path: ProjectDetailScreen.route,
        page: ProjectDetailScreen,
        guards: [AuthenticationGuard, AuthorizationGuard]),
    AutoRoute(
        path: TimeSheetScreen.route,
        page: TimeSheetScreen,
        guards: [AuthenticationGuard, AuthorizationGuard]),
    AutoRoute(path: '*', page: DashboardScreen, guards: [AuthenticationGuard]),
  ],
)
class $AppRouter {}
