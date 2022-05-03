import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'menu_item.dart';

class MenuState with EquatableMixin {
  final MenuItem? selectedItem;
  final List<MenuItem> menuItems;

  const MenuState({this.selectedItem, required this.menuItems});

  @override
  List<Object?> get props => [selectedItem, menuItems];

  MenuState copyWith({
    ValueGetter<MenuItem?>? selectedItem,
    ValueGetter<List<MenuItem>>? menuItems,
  }) {
    return MenuState(
      selectedItem: selectedItem != null ? selectedItem() : this.selectedItem,
      menuItems: menuItems != null ? menuItems() : this.menuItems,
    );
  }
}
