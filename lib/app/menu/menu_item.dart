import 'package:auto_route/auto_route.dart';
import 'package:backend_api/backend_api.dart';
import 'package:equatable/equatable.dart';

class MenuItem with EquatableMixin {
  final String title;
  final String icon;
  final List<Permission> permissions;
  final PageRouteInfo route;

  const MenuItem({
    required this.title,
    required this.icon,
    required this.route,
    this.permissions = const [],
  });

  @override
  List<Object?> get props => [title];
}
