import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension StringListParsing on List<Permission> {
  List<String> parseStringList() =>
      map((permission) => permission.name).toList();
}

extension PermissionListParsing on List<String> {
  List<Permission> parsePermissionList() =>
      Permission.values.where((p) => contains(p.name)).toList();
}

extension HasRight on BuildContext {
  bool hasRight(Permission permission) {
    final authState = read<AuthBloc>().state;
    return authState is Authenticated &&
        authState.permissions.contains(permission);
  }
}
