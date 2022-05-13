import 'package:backend_api/backend_api.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fbase_auth_test/app/feature/profile/repository/profile_repository.dart';

part 'profile_list_state.dart';

class ProfileListCubit extends Cubit<ProfileListState> {
  final ProfileRepository repository;

  ProfileListCubit({required this.repository})
      : super(const ProfileListState.uninitialized());

  Future<void> search() async {
    final original = state;
    try {
      emit(const ProfileListState.loading());
      final result = await repository.findAll();
      emit(ProfileListState.ready(profiles: result));
    } catch (e) {
      emit(ProfileListState.failed(error: e));
      emit(ProfileListState.ready(profiles: original.profiles));
    }
  }
}
