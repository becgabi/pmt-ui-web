part of 'project_phase_list_cubit.dart';

class ProjectPhaseListState extends Equatable {
  final ListStatus status;
  final List<ProjectPhase> projectPhases;

  const ProjectPhaseListState.uninitialized()
      : status = ListStatus.uninitialized,
        projectPhases = const [];

  const ProjectPhaseListState.loading()
      : status = ListStatus.loading,
        projectPhases = const [];

  const ProjectPhaseListState.ready(this.projectPhases)
      : status = ListStatus.ready;

  const ProjectPhaseListState.failed()
      : status = ListStatus.failed,
        projectPhases = const [];

  @override
  List<Object?> get props => [status, projectPhases];
}
