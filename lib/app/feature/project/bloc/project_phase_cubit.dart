import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/cubit/pmt_form_state.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_phase_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProjectPhaseCubit extends Cubit<PmtFormState> {
  final ProjectPhaseRepository repository;

  ProjectPhaseCubit({required this.repository})
      : super(const PmtFormState.initial());

  void initForm(int projectId) =>
      emit(PmtFormState.initialized(_buildForm(projectId)));

  void loadData(ProjectPhase projectPhase) {
    final form = state.form!;
    emit(PmtFormState.inProgress(form, FormStatus.loading));
    form.value = _getProjectPhaseMap(projectPhase);
    emit(PmtFormState.success(form, FormStatus.loaded));
  }

  void newProjectPhase(int projectId) {
    final form = state.form!;
    emit(PmtFormState.inProgress(form, FormStatus.loading));
    final projectPhase = ProjectPhase((p) => p
      ..projectId = projectId
      ..phaseType = PhaseType.IMPLEMENTATION
      ..name = '');
    form.value = _getProjectPhaseMap(projectPhase);
    emit(PmtFormState.success(form, FormStatus.loaded));
  }

  Future<void> save() async {
    final original = state;
    final form = state.form!;
    emit(PmtFormState.inProgress(form, FormStatus.saving));
    final projectPhase = _getProjectPhase(form.value);
    try {
      if (projectPhase.id == null) {
        await repository.create(projectPhase);
      } else {
        await repository.update(projectPhase);
      }
      emit(PmtFormState.success(form, FormStatus.saved));
    } catch (e) {
      emit(PmtFormState.failed(form));
      emit(original);
    }
  }

  FormGroup _buildForm(projectId) => fb.group({
        'id': FormControl<int>(),
        'name': [Validators.required],
        'description': [],
        'phaseType': FormControl<PhaseType>(
            value: PhaseType.IMPLEMENTATION, validators: [Validators.required]),
        'phaseStart': FormControl<DateTime>(),
        'phaseEnd': FormControl<DateTime>(),
        'deadline': FormControl<DateTime>(),
        'projectId': FormControl<int>(value: projectId),
      });

  Map<String, Object?> _getProjectPhaseMap(ProjectPhase projectPhase) => {
        'id': projectPhase.id,
        'name': projectPhase.name,
        'description': projectPhase.description,
        'phaseType': projectPhase.phaseType,
        'phaseStart': projectPhase.phaseStart?.toDateTime(),
        'phaseEnd': projectPhase.phaseEnd?.toDateTime(),
        'deadline': projectPhase.deadline?.toDateTime(),
        'projectId': projectPhase.projectId,
      };

  ProjectPhase _getProjectPhase(Map<String, Object?> projectPhaseMap) =>
      ProjectPhase((p) => p
        ..id = projectPhaseMap['id'] as int?
        ..name = projectPhaseMap['name'] as String?
        ..description = projectPhaseMap['description'] as String?
        ..phaseType = projectPhaseMap['phaseType'] as PhaseType?
        ..phaseStart = (projectPhaseMap['phaseStart'] as DateTime?)?.toDate()
        ..phaseEnd = (projectPhaseMap['phaseEnd'] as DateTime?)?.toDate()
        ..deadline = (projectPhaseMap['deadline'] as DateTime?)?.toDate()
        ..projectId = projectPhaseMap['projectId'] as int?);
}
