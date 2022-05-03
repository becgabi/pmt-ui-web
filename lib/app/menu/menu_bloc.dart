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
        add(const MenuUpdated(menuItems: fixedMenuItems));
      } else {
        add(const MenuUpdated(menuItems: []));
      }
    });

    on<MenuSelected>((event, emit) {
      emit(state.copyWith(selectedItem: () => event.menuItem));
    });
    on<MenuUpdated>((event, emit) {
      emit(MenuState(menuItems: event.menuItems));
    });
  }
}
