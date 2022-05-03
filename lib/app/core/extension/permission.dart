import 'package:backend_api/backend_api.dart';

extension StringListParsing on List<Permission> {
  List<String> parseStringList() =>
      map((permission) => permission.name).toList();
}

extension PermissionListParsing on List<String> {
  List<Permission> parsePermissionList() =>
      Permission.values.where((p) => contains(p.name)).toList();
}
