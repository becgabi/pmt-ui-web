import 'package:backend_api/backend_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:fbase_auth_test/app/feature/colleague/repository/colleague_repository.dart';
import 'package:fbase_auth_test/app/feature/project/repository/project_repository.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/bloc/time_sheet_state.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/repository/time_sheet_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TimeSheetCubit extends Cubit<TimeSheetState> {
  final TimeSheetRepository repository;
  final ProjectRepository projectRepository;
  final ColleagueRepository colleagueRepository;

  TimeSheetCubit(
    this.repository,
    this.projectRepository,
    this.colleagueRepository,
  ) : super(const TimeSheetState.initial());

  void init() async {
    emit(const TimeSheetState.dataLoading());
    try {
      final colleagueId = (await colleagueRepository.getByAuthToken()).id;
      final projects = await projectRepository.findAll(
        DateTime(2022).toUtc(),
        DateTime(2022, 12, 31).toUtc(),
      );
      emit(TimeSheetState.dataLoaded(colleagueId, projects));
      initForm(Date.now());
    } on Exception catch (e) {
      print(e);
      emit(const TimeSheetState.initial());
    }
  }

  void initForm(Date selectedDate) async {
    final original = state;
    final colleagueId = state.colleagueId!;
    final projects = state.projects;
    emit(TimeSheetState.timeSheetLoading(colleagueId, projects));
    try {
      var timeSheet = await repository.find(colleagueId, selectedDate);
      timeSheet ??= _newTimeSheet(colleagueId, selectedDate, projects);
      var form = _buildForm(timeSheet);
      _setTimeCalculator(form);
      emit(TimeSheetState.success(
          colleagueId, projects, form, FormStatus.loaded));
    } on Exception catch (e) {
      print(e);
      emit(TimeSheetState.failed(colleagueId, projects, null));
      emit(original);
    }
  }

  Future<void> save() async {
    final original = state;
    final form = state.form!;
    final colleagueId = state.colleagueId;
    final projects = state.projects;
    emit(TimeSheetState.saving(colleagueId, projects, form));
    try {
      final timeSheet = _getTimeSheet(form.value);
      if (timeSheet.id == null) {
        await repository.create(timeSheet);
      } else {
        await repository.update(timeSheet);
      }
      emit(TimeSheetState.success(
          colleagueId, projects, form, FormStatus.saved));
    } catch (e) {
      print(e);
      emit(TimeSheetState.failed(colleagueId, projects, form));
      emit(original);
    }
  }

  void _setTimeCalculator(FormGroup form) {
    form.valueChanges.forEach((projectMap) {
      final minutes = _getItems(projectMap!)
          .build()
          .map((i) => i.hours * 60 + i.minutes)
          .sum;
      form.control('sumHours').value = minutes ~/ 60;
      form.control('sumMinutes').value = minutes % 60;
    });
  }

  FormGroup _buildForm(TimeSheet timeSheet) => fb.group({
        'id': FormControl<int>(value: timeSheet.id),
        'workedDate': timeSheet.workedDate.toDateTime(),
        'sumHours': FormControl<int>(value: timeSheet.sumHours),
        'sumMinutes': FormControl<int>(value: timeSheet.sumMinutes),
        'colleagueId': FormControl<int>(value: timeSheet.colleagueId),
        'timeSheetItems': fb.array(timeSheet.timeSheetItems
                ?.map((item) => fb.group(_buildItemForm(item)))
                .toList() ??
            [])
      });

  Map<String, Object> _buildItemForm(TimeSheetItem item) => {
        'id': FormControl<int>(value: item.id),
        'hours': FormControl<int>(
            value: item.hours, validators: [Validators.required]),
        'minutes': [item.minutes, Validators.required],
        'description': FormControl<String>(value: item.description),
        'projectId': FormControl<int>(value: item.projectId),
        'timeSheetId': FormControl<int>(value: item.timeSheetId),
      };

  TimeSheet _getTimeSheet(Map<String, Object?> projectMap) => TimeSheet((t) => t
    ..id = projectMap['id'] as int?
    ..workedDate = (projectMap['workedDate'] as DateTime?)?.toDate()
    ..sumHours = projectMap['sumHours'] as int?
    ..sumMinutes = projectMap['sumMinutes'] as int?
    ..colleagueId = projectMap['colleagueId'] as int?
    ..timeSheetItems = _getItems(projectMap));

  ListBuilder<TimeSheetItem> _getItems(Map<String, Object?> projectMap) =>
      (projectMap['timeSheetItems'] as Iterable<dynamic>)
          .map((itemMap) => TimeSheetItem((i) => i
            ..id = itemMap['id'] as int?
            ..hours = itemMap['hours'] as int?
            ..minutes = itemMap['minutes'] as int?
            ..description = itemMap['description'] as String?
            ..projectId = itemMap['projectId'] as int?
            ..timeSheetId = itemMap['timeSheetId'] as int?))
          .toBuiltList()
          .toBuilder();

  TimeSheet _newTimeSheet(
          int colleagueId, Date selectedDate, List<Project> projects) =>
      TimeSheet((t) => t
        ..workedDate = selectedDate
        ..sumHours = 0
        ..sumMinutes = 0
        ..colleagueId = colleagueId
        ..timeSheetItems = projects
            .map((p) => TimeSheetItem((i) => i
              ..hours = 0
              ..minutes = 0
              ..projectId = p.id))
            .toBuiltList()
            .toBuilder());
}
