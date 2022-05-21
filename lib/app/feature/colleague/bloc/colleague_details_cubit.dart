import 'package:backend_api/backend_api.dart';
import 'package:bloc/bloc.dart';
import 'package:fbase_auth_test/app/core/cubit/pmt_form_state.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../repository/colleague_repository.dart';

class ColleagueDetailsCubit extends Cubit<PmtFormState> {
  final ColleagueRepository repository;

  ColleagueDetailsCubit(this.repository) : super(const PmtFormState.initial()) {
    initForm();
  }

  void initForm() {
    emit(PmtFormState.initialized(_buildForm()));
  }

  void loadData(Colleague colleague) {
    final form = state.form!;
    emit(PmtFormState.inProgress(form, FormStatus.loading));
    form.value = _getColleagueMap(colleague);
    emit(PmtFormState.success(form, FormStatus.loaded));
  }

  void loadNew() {
    loadData(_newColleague());
  }

  Future<void> save() async {
    final original = state;
    final form = state.form!;
    emit(PmtFormState.inProgress(form, FormStatus.saving));
    final colleague = _getColleague(form.value);
    try {
      if (colleague.id == null) {
        await repository.create(colleague);
      } else {
        await repository.update(colleague);
      }
      emit(PmtFormState.success(form, FormStatus.saved));
    } catch (e) {
      emit(PmtFormState.failed(form));
      emit(original);
    }
  }

  FormGroup _buildForm() => fb.group({
        'id': FormControl<int>(),
        'uid': FormControl<String>(),
        'ldapId': FormControl<String>(),
        'name': FormControl<String>(validators: [Validators.required]),
        'role': FormControl<Role>(
            value: Role.COLLEAGUE, validators: [Validators.required]),
        'type': FormControl<ColleagueType>(
            value: ColleagueType.EMPLOYEE, validators: [Validators.required]),
        'status': FormControl<ColleagueStatus>(
            value: ColleagueStatus.ACTIVE, validators: [Validators.required]),
        'email': FormControl<String>(),
        'address': FormControl<String>(),
        'phone': FormControl<String>(),
        'bankAccountNumber': FormControl<String>(),
      });

  Map<String, Object?> _getColleagueMap(Colleague colleague) => {
        'id': colleague.id,
        'uid': colleague.uid,
        'ldapId': colleague.ldapId,
        'name': colleague.name,
        'role': colleague.role,
        'type': colleague.type,
        'status': colleague.status,
        'email': colleague.email,
        'address': colleague.address,
        'phone': colleague.phone,
        'bankAccountNumber': colleague.bankAccountNumber,
      };

  Colleague _getColleague(Map<String, Object?> colleagueMap) =>
      Colleague((c) => c
        ..id = colleagueMap['id'] as int?
        ..uid = colleagueMap['uid'] as String?
        ..ldapId = colleagueMap['ldapId'] as String?
        ..name = colleagueMap['name'] as String
        ..role = colleagueMap['role'] as Role
        ..type = colleagueMap['type'] as ColleagueType
        ..status = colleagueMap['status'] as ColleagueStatus
        ..email = colleagueMap['email'] as String?
        ..address = colleagueMap['address'] as String?
        ..phone = colleagueMap['phone'] as String?
        ..bankAccountNumber = colleagueMap['bankAccountNumber'] as String?);

  Colleague _newColleague() => Colleague((c) => c
    ..name = ""
    ..role = Role.COLLEAGUE
    ..type = ColleagueType.EMPLOYEE
    ..status = ColleagueStatus.ACTIVE);
}
