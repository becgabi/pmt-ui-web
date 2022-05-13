import 'package:auto_route/auto_route.dart';
import 'package:backend_api/backend_api.dart';
import 'package:dio/dio.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/auth/bloc/auth_bloc.dart';
import 'package:fbase_auth_test/app/core/http/interceptor/jwt_auth_interceptor.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';
import 'package:fbase_auth_test/app/router/guards/authentication_guard.dart';
import 'package:fbase_auth_test/app/router/observers/navigator_observer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'menu/menu_bloc.dart';
import 'menu/menu_controller.dart';

class Application extends StatelessWidget {
  final _appRouter = AppRouter(
    authenticationGuard: AuthenticationGuard(),
//  authorizationGuard: AuthorizationGuard(),
  );

  Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuth>(create: (context) => FirebaseAuth.instance),
        Provider<JwtAuthInterceptor>(
            create: (context) => JwtAuthInterceptor(
                Provider.of<FirebaseAuth>(context, listen: false))),
        Provider<BackendApi>(
            create: (context) => BackendApi(interceptors: [
                  LogInterceptor(),
                  Provider.of<JwtAuthInterceptor>(context, listen: false)
                ]))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc(), lazy: false),
          BlocProvider(
              create: (context) =>
                  MenuBloc(authBloc: BlocProvider.of<AuthBloc>(context)),
              lazy: false),
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => MenuController())
          ],
          child: MaterialApp.router(
            routerDelegate: AutoRouterDelegate(
              _appRouter,
              navigatorObservers: () => [PmtNavigatorObserver()],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
            title: 'Project Management Tool',
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: Config.backgroundColor,
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: Colors.white),
              canvasColor: Config.secondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
