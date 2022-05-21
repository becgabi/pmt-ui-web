import 'package:equatable/equatable.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PmtFormState extends Equatable {
  final FormGroup? form;
  final FormStatus status;

  const PmtFormState.initial()
      : form = null,
        status = FormStatus.empty;

  const PmtFormState.initialized(this.form) : status = FormStatus.empty;

  const PmtFormState.inProgress(this.form, this.status);

  const PmtFormState.success(this.form, this.status);

  const PmtFormState.failed(this.form) : status = FormStatus.failed;

  @override
  List<Object?> get props => [form, status];
}
