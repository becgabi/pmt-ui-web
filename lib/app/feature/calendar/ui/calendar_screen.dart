import 'package:fbase_auth_test/app/core/extension/build_context.dart';
import 'package:fbase_auth_test/app/core/ui/layout/pmt_scaffold.dart';
import 'package:fbase_auth_test/app/feature/calendar/bloc/calendar_cubit.dart';
import 'package:fbase_auth_test/app/feature/calendar/repository/calendar_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/ui/widget/rounded_box.dart';
import '../bloc/calendar_state.dart';

class CalendarScreen extends StatelessWidget {
  static const route = '/calendar';
  static const title = 'Calendar';

  const CalendarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarCubit(
          repository: RepositoryProvider.of<CalendarRepository>(context)),
      child: BlocConsumer<CalendarCubit, CalendarState>(
        listener: (context, state) => {
          if (state.error != null) {context.showErrorSnackBar(state.error!)}
        },
        builder: (context, state) => PmtScaffold(
          body: Column(
            children: [
              _buildHeader(context),
              _buildTableCalendar(state, context),
            ],
          ),
        ),
      ),
    );
  }

  RoundedBox _buildHeader(BuildContext context) {
    return RoundedBox(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () async {
              await context.read<CalendarCubit>().saveSelectedHolidays();
              context.showSavedSnackBar();
            },
            child: const Text("Save selected holidays"),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }

  TableCalendar<dynamic> _buildTableCalendar(
      CalendarState state, BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(DateTime.now().year, 1, 1),
      lastDay: DateTime.utc(DateTime.now().year, 12, 31),
      focusedDay:
          DateTime(DateTime.now().year, state.month ?? DateTime.now().month),
      calendarFormat: CalendarFormat.month,
      headerStyle: const HeaderStyle(formatButtonVisible: false),
      startingDayOfWeek: StartingDayOfWeek.monday,
      locale: 'hu-HU',
      onCalendarCreated: (pageController) =>
          context.read<CalendarCubit>().loadCalendarData(),
      selectedDayPredicate: (day) =>
          state.holidays.contains(DateUtils.dateOnly(day)),
      onDaySelected: (selectedDay, focusedDay) => context
          .read<CalendarCubit>()
          .clickDay(DateUtils.dateOnly(selectedDay)),
      holidayPredicate: (day) =>
          state.nonWorkingDays.contains(DateUtils.dateOnly(day)),
      calendarStyle: const CalendarStyle(
        outsideDaysVisible: false,
        holidayDecoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(width: 1)),
          shape: BoxShape.circle,
          color: Color(0xFFFF7777),
        ),
      ),
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          if (state.movedWorkdays.contains(DateUtils.dateOnly(day))) {
            return Center(
              child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(15.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFB97900),
                ),
                child: Text(day.day.toString()),
              ),
            );
          }
        },
        dowBuilder: (context, day) {
          if (day.weekday == DateTime.sunday) {
            return Center(
              child: Text(
                DateFormat.E('hu-HU').format(day),
                style: const TextStyle(color: Colors.red),
              ),
            );
          }
        },
      ),
    );
  }
}
