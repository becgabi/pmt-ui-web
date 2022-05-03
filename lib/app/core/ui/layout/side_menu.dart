import 'package:fbase_auth_test/app/menu/menu_bloc.dart';
import 'package:fbase_auth_test/app/menu/menu_event.dart';
import 'package:fbase_auth_test/app/menu/menu_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (BuildContext context, state) {
        final items = state.menuItems
            .map((e) => DrawerListTile(
                  title: e.title,
                  svgIcon: e.icon,
                  selected: e == state.selectedItem,
                  press: () =>
                      context.read<MenuBloc>().add(MenuSelected(menuItem: e)),
                ))
            .toList();
        print(items);
        return Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Image.asset("assets/images/logo.png")),
              ...items,
            ],
          ),
        );
      },
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgIcon,
    required this.selected,
    required this.press,
  }) : super(key: key);

  final String title, svgIcon;
  final bool selected;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: selected ? null : press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgIcon,
        color: selected ? Colors.yellow : Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: selected ? FontWeight.bold : FontWeight.normal,
          color: selected ? Colors.yellow : Colors.white54,
        ),
      ),
    );
  }
}
