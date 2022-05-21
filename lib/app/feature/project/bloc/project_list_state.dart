part of 'project_list_cubit.dart';

enum Status {
  uninitialized,
  loadingPartners,
  readyPartners,
  loading,
  ready,
  failed,
}

class ProjectListState extends Equatable {
  final Status status;
  final DateTime? filterDateFrom;
  final DateTime? filterDateTo;
  final List<Project> projects;
  final List<Partner> partners;
  final Object? error;

  const ProjectListState.uninitialized()
      : status = Status.uninitialized,
        filterDateFrom = null,
        filterDateTo = null,
        projects = const [],
        partners = const [],
        error = null;

  const ProjectListState.loadingPartners()
      : status = Status.loadingPartners,
        filterDateFrom = null,
        filterDateTo = null,
        projects = const [],
        partners = const [],
        error = null;

  const ProjectListState.readyPartners({required this.partners})
      : status = Status.readyPartners,
        filterDateFrom = null,
        filterDateTo = null,
        projects = const [],
        error = null;

  const ProjectListState.loading(
      {required this.partners, this.filterDateFrom, this.filterDateTo})
      : status = Status.loading,
        projects = const [],
        error = null;

  const ProjectListState.ready(
      {required this.projects, required this.partners, this.filterDateFrom, this.filterDateTo})
      : status = Status.ready,
        error = null;

  const ProjectListState.failed(
      {required this.error, required this.partners, this.filterDateFrom, this.filterDateTo})
      : status = Status.failed,
        projects = const [];

  @override
  List<Object?> get props =>
      [status, filterDateFrom, filterDateTo, projects, error];
}
