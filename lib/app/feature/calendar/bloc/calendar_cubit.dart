import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/feature/calendar/repository/calendar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'calendar_state.dart';

class CalendarCubit extends Cubit<CalendarState> {
  final CalendarRepository repository;

  CalendarCubit({required this.repository})
      : super(CalendarState.empty(DateTime.now().month));

  Future<void> loadCalendarData() async {
    try {
      final CalendarData calendarData =
          await repository.getCalendarData(DateTime.now().year);
      final List<DateTime> nonWorkingDays =
          calendarData.nonWorkingDays?.map((e) => DateTime.parse(e)).toList() ?? [];
      final List<DateTime> movedWorkdays =
          calendarData.movedWorkdays?.map((e) => DateTime.parse(e)).toList() ?? [];

      final List<DateTime> absences =
          await repository.getAbsences(DateTime.now().year);

      emit(CalendarState.pure(
          nonWorkingDays: nonWorkingDays,
          movedWorkdays: movedWorkdays,
          holidays: absences,
          month: state.month));
    } catch (e) {
      emit(CalendarState.failed(error: e.toString()));
      emit(CalendarState.empty(state.month));
    }
  }

  void clickDay(DateTime day) {
    if (state.nonWorkingDays.contains(day) ||
        (day.weekday == DateTime.saturday &&
            !state.movedWorkdays.contains(day)) ||
        day.weekday == DateTime.sunday) {
      return;
    }
    final originalSelectedDays = state.holidays;


    final List<DateTime> newSelectedDays = [...originalSelectedDays];

    if (originalSelectedDays.contains(day)) {
      newSelectedDays.remove(day);
    } else {
      newSelectedDays.add(day);
    }

    emit(CalendarState.withSelection(state, day.month, newSelectedDays));
  }

  Future<void> saveSelectedHolidays() async {
    await repository.saveAbsences(DateTime.now().year, state.holidays);
    loadCalendarData();
  }
}
