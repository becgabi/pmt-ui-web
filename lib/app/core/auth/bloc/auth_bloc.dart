import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required FirebaseAuth firebaseAuth})
      : super(const AuthUninitialized()) {
    firebaseAuth.userChanges().listen((user) {
      if (user != null) {
        add(SignedIn(user: user));
      } else {
        add(const SignedOut());
      }
    });
    on<SignOut>((event, emit) {
      firebaseAuth.signOut();
      emit(const SigningOut());
    });
    on<SignedOut>((event, emit) {
      emit(const Unauthenticated());
    });
    on<SignedIn>((event, emit) {
      emit(Authenticated(user: event.user));
    });
  }
}
