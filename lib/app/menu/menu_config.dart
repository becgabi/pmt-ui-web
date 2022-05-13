import 'package:fbase_auth_test/app/feature/files/ui/dashboard_screen.dart';
import 'package:fbase_auth_test/app/feature/profile/ui/profile_screen.dart';
import 'package:fbase_auth_test/app/menu/menu_item.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';

const List<MenuItem> fixedMenuItems = [
  MenuItem(
    route: DashboardRoute(),
    title: DashboardScreen.title,
    icon: "assets/icons/menu_dashbord.svg",
  ),
  MenuItem(
    route: ProfileRoute(),
    title: ProfileScreen.title,
    icon: "assets/icons/menu_profile.svg",
  ),
];
