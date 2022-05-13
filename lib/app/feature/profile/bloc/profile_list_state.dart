part of 'profile_list_cubit.dart';

enum ListStatus {
  uninitialized,
  loading,
  ready,
  failed,
}

class ProfileListState extends Equatable {
  final ListStatus status;
  final List<Profile> profiles;
  final Object? error;

  const ProfileListState.uninitialized()
      : status = ListStatus.uninitialized,
        profiles = const [],
        error = null;

  const ProfileListState.loading()
      : status = ListStatus.loading,
        profiles = const [],
        error = null;

  const ProfileListState.ready({required this.profiles})
      : status = ListStatus.ready,
        error = null;

  const ProfileListState.failed({required this.error})
      : status = ListStatus.failed,
        profiles = const [];

  @override
  List<Object?> get props => [status, profiles, error];
}
