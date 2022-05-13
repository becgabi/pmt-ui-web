import 'package:backend_api/backend_api.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fbase_auth_test/app/core/extension/permission.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({FirebaseAuth? firebaseAuth}) : super(const AuthUninitialized()) {

    final auth = firebaseAuth ?? FirebaseAuth.instance;

    // Listening stream of authentication event
    auth.userChanges().listen((user) async {
      if (user != null) {
        final permissions = await _extractPermissions(user);
        add(SignedIn(user: user, permissions: permissions));
      } else {
        add(const SignedOut());
      }
    });

    on<SignOut>((event, emit) {
      auth.signOut();
      emit(const SigningOut());
    });
    on<SignedOut>((event, emit) {
      emit(const Unauthenticated());
    });
    on<SignedIn>((event, emit) {
      emit(Authenticated(user: event.user, permissions: event.permissions));
    });
  }

  Future<List<Permission>> _extractPermissions(User user) async {
    final idTokenResult = await user.getIdTokenResult();
    final permissionsClaim = idTokenResult.claims?["permissions"];
    if (permissionsClaim == null && permissionsClaim is! List) {
      return [];
    }
    return List<String>.from(permissionsClaim).parsePermissionList();
  }
}
