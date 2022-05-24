import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/feature/balance/ui/screen/balance_screen.dart';
import 'package:fbase_auth_test/app/feature/colleague/ui/screen/colleague_screen.dart';
import 'package:fbase_auth_test/app/feature/project/ui/screen/project_detail_screen.dart';
import 'package:fbase_auth_test/app/feature/project/ui/screen/project_list_screen.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/ui/screen/time_sheet_screen.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';

const Map<String, List<Permission>> routePermissions = {
  BalanceRoute.name: BalanceScreen.permissions,
  ColleagueRoute.name: ColleagueScreen.permissions,
  ProjectListRoute.name: ProjectListScreen.permissions,
  ProjectDetailRoute.name: ProjectDetailScreen.permissions,
  TimeSheetRoute.name: TimeSheetScreen.permissions,
};
