import 'package:auto_route/auto_route.dart';
import 'package:fbase_auth_test/app/router/app_router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final authenticated = FirebaseAuth.instance.currentUser != null;
    if (authenticated) {
      resolver.next(true);
    } else {
      router.push(const SignInRoute());
    }
  }
}
