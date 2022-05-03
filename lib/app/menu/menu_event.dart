import 'package:equatable/equatable.dart';

import 'menu_item.dart';

abstract class MenuEvent with EquatableMixin {
  const MenuEvent();
}

/// Notifies bloc to change the selected state
class MenuSelected extends MenuEvent {
  final MenuItem menuItem;

  const MenuSelected({required this.menuItem});

  @override
  List<Object?> get props => [menuItem];
}

class MenuUpdated extends MenuEvent {
  final List<MenuItem> menuItems;
  final MenuItem? selected;

  const MenuUpdated({required this.menuItems, this.selected});

  @override
  List<Object?> get props => [menuItems, selected];
}
