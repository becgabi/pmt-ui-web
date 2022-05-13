import 'package:fbase_auth_test/app/core/auth/bloc/auth_bloc.dart';
import 'package:fbase_auth_test/app/menu/menu_config.dart';
import 'package:fbase_auth_test/app/menu/menu_event.dart';
import 'package:fbase_auth_test/app/menu/menu_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc({required AuthBloc authBloc})
      : super(const MenuState(menuItems: [])) {
    authBloc.stream.listen((authState) {
      if (authState is Authenticated) {
        add(MenuUpdated(
          menuItems: fixedMenuItems,
          permissions: authState.permissions,
        ));
      } else {
        add(const MenuUpdated(menuItems: [], permissions: []));
      }
    });

    on<MenuSelected>((event, emit) {
      emit(state.copyWith(selectedItem: () => event.menuItem));
    });

    on<MenuPushed>((event, emit) {
      final filteredMenuItems = fixedMenuItems
          .where((element) => element.route.routeName == event.routeName)
          .toList();
      if (filteredMenuItems.length == 1) {
        emit(state.copyWith(selectedItem: () => filteredMenuItems.first));
      }
    });

    on<MenuUpdated>((event, emit) {
      final menuItems = event.menuItems
          .where((element) =>
              element.permissions.isEmpty ||
              element.permissions
                  .toSet()
                  .intersection(event.permissions.toSet())
                  .isNotEmpty)
          .toList();
      emit(MenuState(menuItems: menuItems));
    });
  }
}
