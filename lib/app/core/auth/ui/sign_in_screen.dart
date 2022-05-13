import 'package:auto_route/auto_route.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart' as auth_ui;

class SignInScreen extends StatelessWidget {
  static const route = '/sign-in';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser != null) {
      context.router.replace(const DashboardRoute());
    }
    return auth_ui.SignInScreen(
      actions: [
        auth_ui.AuthStateChangeAction<auth_ui.SignedIn>(
          (context, state) => context.router.replace(const DashboardRoute()),
        ),
      ],
    );
  }
}
