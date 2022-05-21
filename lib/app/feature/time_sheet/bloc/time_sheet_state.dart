import 'package:backend_api/backend_api.dart';
import 'package:equatable/equatable.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TimeSheetState extends Equatable {
  final int? colleagueId;
  final List<Project>? projects;
  final FormGroup? form;
  final FormStatus status;

  const TimeSheetState.initial()
      : colleagueId = null,
        projects = const [],
        form = null,
        status = FormStatus.empty;

  const TimeSheetState.dataLoading()
      : colleagueId = null,
        projects = const [],
        form = null,
        status = FormStatus.loading;

  const TimeSheetState.dataLoaded(this.colleagueId, this.projects)
      : form = null,
        status = FormStatus.empty;

  const TimeSheetState.timeSheetLoading(this.colleagueId, this.projects)
      : form = null,
        status = FormStatus.loading;

  const TimeSheetState.saving(this.colleagueId, this.projects, this.form)
      : status = FormStatus.saving;

  const TimeSheetState.success(
      this.colleagueId, this.projects, this.form, this.status);

  const TimeSheetState.failed(this.colleagueId, this.projects, this.form)
      : status = FormStatus.failed;

  @override
  List<Object?> get props => [colleagueId, projects, form, status];
}
