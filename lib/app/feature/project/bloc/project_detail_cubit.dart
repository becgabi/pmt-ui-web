import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/cubit/pmt_form_state.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProjectDetailCubit extends Cubit<PmtFormState> {
  final ProjectRepository repository;

  ProjectDetailCubit({required this.repository})
      : super(const PmtFormState.initial()) {
    initForm();
  }

  void initForm() {
    emit(PmtFormState.initialized(_buildForm()));
  }

  void loadData(Project project) {
    final form = state.form!;
    emit(PmtFormState.inProgress(form, FormStatus.loading));
    form.value = _getProjectMap(project);
    emit(PmtFormState.success(form, FormStatus.loaded));
  }

  Future<void> save() async {
    final original = state;
    final form = state.form!;
    emit(PmtFormState.inProgress(form, FormStatus.saving));
    final project = _getProject(form.value);
    try {
      if (project.id == null) {
        await repository.create(project);
      } else {
        await repository.update(project);
      }
      emit(PmtFormState.success(form, FormStatus.saved));
    } catch (e) {
      emit(PmtFormState.failed(form));
      emit(original);
    }
  }

  FormGroup _buildForm() => fb.group({
        'id': FormControl<int>(),
        'name': Validators.required,
        'partnerId': FormControl<int>(validators: [Validators.required]),
        'projectStart': FormControl<DateTime>(),
        'projectEnd': FormControl<DateTime>(),
        'phase': FormControl<PhaseType>(validators: [Validators.required]),
        'settlementMode':
            FormControl<SettlementMode>(validators: [Validators.required]),
      });

  Map<String, Object?> _getProjectMap(Project project) => {
        'id': project.id,
        'name': project.name,
        'partnerId': project.partnerId,
        'projectStart': project.projectStart?.toDateTime(),
        'projectEnd': project.projectEnd?.toDateTime(),
        'phase': project.phase,
        'settlementMode': project.settlementMode,
      };

  Project _getProject(Map<String, Object?> projectMap) => Project((p) => p
    ..id = projectMap['id'] as int?
    ..name = projectMap['name'] as String?
    ..partnerId = projectMap['partnerId'] as int?
    ..projectStart = (projectMap['projectStart'] as DateTime?)?.toDate()
    ..projectEnd = (projectMap['projectEnd'] as DateTime?)?.toDate()
    ..phase = projectMap['phase'] as PhaseType?
    ..settlementMode = projectMap['settlementMode'] as SettlementMode?);
}
