import 'package:backend_api/backend_api.dart';
import 'package:equatable/equatable.dart';
import 'package:fbase_auth_test/app/feature/partner/repository/partner_repository.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'project_list_state.dart';

class ProjectListCubit extends Cubit<ProjectListState> {
  final ProjectRepository projectRepository;
  final PartnerRepository partnerRepository;

  ProjectListCubit(
      {required this.projectRepository, required this.partnerRepository})
      : super(const ProjectListState.uninitialized());

  Future<void> init(DateTime dateFrom, DateTime dateTo) async {
    final original = state;
    try {
      emit(const ProjectListState.loadingPartners());
      final result = await partnerRepository.getAll();
      emit(ProjectListState.readyPartners(partners: result));
      find(dateFrom, dateTo);
    } catch (e) {
      emit(ProjectListState.failed(
          error: e,
          filterDateFrom: dateFrom,
          filterDateTo: dateTo,
          partners: original.partners));
      emit(ProjectListState.ready(
          projects: original.projects, partners: original.partners));
    }
  }

  Future<void> find(DateTime? dateFrom, DateTime? dateTo) async {
    final original = state;
    try {
      emit(ProjectListState.loading(
          filterDateFrom: dateFrom,
          filterDateTo: dateTo,
          partners: original.partners));
      final result =
          await projectRepository.findAll(dateFrom?.toUtc(), dateTo?.toUtc());
      emit(ProjectListState.ready(
          projects: result,
          filterDateFrom: dateFrom,
          filterDateTo: dateTo,
          partners: original.partners));
    } catch (e) {
      emit(ProjectListState.failed(
          error: e,
          filterDateFrom: dateFrom,
          filterDateTo: dateTo,
          partners: original.partners));
      emit(ProjectListState.ready(
          projects: original.projects, partners: original.partners));
    }
  }

  Project newProject() => Project(
        (b) => b
          ..name = ""
          ..phase = PhaseType.IMPLEMENTATION
          ..settlementMode = SettlementMode.T_AND_M
          ..projectStart = null
          ..projectEnd = null,
      );
}
