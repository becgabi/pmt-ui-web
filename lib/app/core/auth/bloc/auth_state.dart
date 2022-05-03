part of 'auth_bloc.dart';

@immutable
abstract class AuthState with EquatableMixin {
  const AuthState();
}

class AuthUninitialized extends AuthState {
  const AuthUninitialized();

  @override
  List<Object?> get props => [];
}

class Unauthenticated extends AuthState {
  const Unauthenticated();

  @override
  List<Object?> get props => [];
}

class SigningOut extends AuthState {
  const SigningOut();

  @override
  List<Object?> get props => [];
}

class Authenticated extends AuthState {
  final User user;

  const Authenticated({required this.user});

  @override
  List<Object?> get props => [user.uid];
}
