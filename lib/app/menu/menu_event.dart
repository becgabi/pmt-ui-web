import 'package:backend_api/backend_api.dart';
import 'package:equatable/equatable.dart';

import 'menu_item.dart';

abstract class MenuEvent with EquatableMixin {
  const MenuEvent();
}

class MenuSelected extends MenuEvent {
  final MenuItem menuItem;

  const MenuSelected({required this.menuItem});

  @override
  List<Object?> get props => [menuItem];
}

/// Notifies bloc to change the selected state
class MenuPushed extends MenuEvent {
  final String? routeName;

  const MenuPushed({required this.routeName});

  @override
  List<Object?> get props => [routeName];
}

class MenuUpdated extends MenuEvent {
  final List<Permission> permissions;
  final List<MenuItem> menuItems;
  final MenuItem? selected;

  const MenuUpdated(
      {required this.menuItems, required this.permissions, this.selected});

  @override
  List<Object?> get props => [menuItems, selected];
}
