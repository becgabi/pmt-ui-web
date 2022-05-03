import 'package:fbase_auth_test/app/core/auth/bloc/auth_bloc.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/config/responsive.dart';
import 'package:fbase_auth_test/app/menu/menu_bloc.dart';
import 'package:fbase_auth_test/app/menu/menu_controller.dart';
import 'package:fbase_auth_test/app/menu/menu_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (BuildContext context, state) {
        return Row(
          children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: context.read<MenuController>().toggleMenu,
              ),
            if (!Responsive.isMobile(context))
              Text(
                state.selectedItem?.title ?? "",
                style: Theme.of(context).textTheme.headline6,
              ),
            Expanded(child: Container()),
            const ProfileCard()
          ],
        );
      },
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (BuildContext context, state) {
        String displayName;
        String? displayPhotoUrl;
        if (state is Authenticated) {
          displayName = state.user.displayName ?? state.user.uid;
          displayPhotoUrl = state.user.photoURL;
        } else {
          displayName = "<Unauthenticated>";
        }
        return Container(
          margin: EdgeInsets.only(left: Config.defaultPadding),
          padding: EdgeInsets.symmetric(
            horizontal: Config.defaultPadding,
            vertical: Config.defaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: Config.secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.white10),
          ),
          child: Row(
            children: [
              Image.asset(
                  displayPhotoUrl ??
                      "assets/images/profile_pic_placeholder.png",
                  height: 38),
              if (!Responsive.isMobile(context))
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Config.defaultPadding / 2),
                  child: Text(displayName),
                ),
              IconButton(
                onPressed: () => _handleSignOut(context),
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
        );
      },
    );
  }

  void _handleSignOut(BuildContext context) {
    context.read<AuthBloc>().add(const SignOut());
    Navigator.pushReplacementNamed(context, '/sign-in');
  }
}
