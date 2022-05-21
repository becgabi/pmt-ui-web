import 'package:equatable/equatable.dart';

class CalendarState extends Equatable {
  final List<DateTime> nonWorkingDays;
  final List<DateTime> movedWorkdays;
  final List<DateTime> holidays;
  final int? month;
  final String? error;

  const CalendarState.empty(this.month)
      : nonWorkingDays = const [],
        movedWorkdays = const [],
        holidays = const [],
        error = null;

  const CalendarState.pure(
      {required this.nonWorkingDays,
      required this.movedWorkdays,
      required this.holidays,
      required this.month})
      : error = null;

  const CalendarState.failed({required this.error})
      : nonWorkingDays = const [],
        movedWorkdays = const [],
        holidays = const [],
        month = null;

  CalendarState.withSelection(CalendarState state, this.month, this.holidays)
      : nonWorkingDays = state.nonWorkingDays,
        movedWorkdays = state.movedWorkdays,
        error = state.error;

  @override
  List<Object?> get props =>
      [nonWorkingDays, movedWorkdays, holidays];
}
