import 'package:fbase_auth_test/app/core/auth/config/permission_config.dart';
import 'package:fbase_auth_test/app/feature/files/ui/dashboard_screen.dart';
import 'package:fbase_auth_test/app/feature/profile/ui/profile_screen.dart';
import 'package:fbase_auth_test/app/feature/project/ui/screen/project_list_screen.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/ui/screen/time_sheet_screen.dart';
import 'package:fbase_auth_test/app/menu/menu_item.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';

List<MenuItem> fixedMenuItems = [
  const MenuItem(
    route: DashboardRoute(),
    title: DashboardScreen.title,
    icon: "assets/icons/menu_dashbord.svg",
  ),
  const MenuItem(
    route: ProfileRoute(),
    title: ProfileScreen.title,
    icon: "assets/icons/menu_profile.svg",
  ),
  MenuItem(
    route: const ProjectListRoute(),
    title: ProjectListScreen.title,
    icon: 'assets/icons/menu_tran.svg',
    permissions: routePermissions[ProjectListRoute.name]!,
  ),
  MenuItem(
    route: const TimeSheetRoute(),
    title: TimeSheetScreen.title,
    icon: 'assets/icons/menu_task.svg',
    permissions: routePermissions[TimeSheetRoute.name]!,
  ),
];
