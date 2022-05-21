import 'package:backend_api/backend_api.dart';
import 'package:equatable/equatable.dart';
import 'package:fbase_auth_test/app/core/data/list_status.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_phase_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'project_phase_list_state.dart';

class ProjectPhaseListCubit extends Cubit<ProjectPhaseListState> {
  final ProjectPhaseRepository repository;

  ProjectPhaseListCubit({required this.repository})
      : super(const ProjectPhaseListState.uninitialized());

  Future<void> load(int projectId) async {
    final original = state;
    emit(const ProjectPhaseListState.loading());
    try {
      final projectPhases = await repository.findByProject(projectId);
      emit(ProjectPhaseListState.ready(projectPhases));
    } catch (e) {
      emit(const ProjectPhaseListState.failed());
      emit(original);
    }
  }
}
