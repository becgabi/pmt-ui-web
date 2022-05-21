import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/feature/project/ui/screen/project_detail_screen.dart';
import 'package:fbase_auth_test/app/feature/project/ui/screen/project_list_screen.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';

const Map<String, List<Permission>> routePermissions = {
  ProjectListRoute.name: ProjectListScreen.permissions,
  ProjectDetailRoute.name: ProjectDetailScreen.permissions,
};
