part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent with EquatableMixin {
  const AuthEvent();
}

class SignedIn extends AuthEvent {
  final User user;
  final List<Permission> permissions;

  const SignedIn({required this.user, required this.permissions});

  @override
  List<Object?> get props => [user];
}

class SignOut extends AuthEvent {
  const SignOut();

  @override
  List<Object?> get props => [];
}

class SignedOut extends AuthEvent {
  const SignedOut();

  @override
  List<Object?> get props => [];
}
