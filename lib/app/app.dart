import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/auth/bloc/auth_bloc.dart';
import 'package:fbase_auth_test/app/feature/files/ui/dashboard_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/auth.dart' as auth_ui;
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'menu/menu_bloc.dart';
import 'menu/menu_controller.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => AuthBloc(firebaseAuth: FirebaseAuth.instance),
            lazy: false),
        BlocProvider(
            create: (context) =>
                MenuBloc(authBloc: BlocProvider.of<AuthBloc>(context)),
            lazy: false),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuController())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Project Management Tool',
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Config.backgroundColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white),
            canvasColor: Config.secondaryColor,
          ),
          initialRoute:
              FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/home',
          routes: routes,
        ),
      ),
    );
  }
}

///
/// Routes
///
final routes = {
  '/sign-in': (context) {
    return auth_ui.SignInScreen(
      actions: [
        auth_ui.AuthStateChangeAction<auth_ui.SignedIn>((context, state) =>
            Navigator.pushReplacementNamed(context, '/home')),
      ],
    );
  },
  '/home': (context) {
    return const DashboardScreen();
  },
};
