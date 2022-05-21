import 'package:auto_route/auto_route.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/extension/datetime.dart';
import 'package:fbase_auth_test/app/core/ui/widget/rounded_box.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectFilter extends StatefulWidget {
  const ProjectFilter({Key? key}) : super(key: key);

  @override
  ProjectFilterState createState() => ProjectFilterState();
}

class ProjectFilterState extends State<ProjectFilter> with AutoRouteAware {
  AutoRouteObserver? _observer;

  late DateTime _selectedDateFrom;
  late DateTime _selectedDateTo;

  @override
  void initState() {
    super.initState();
    _selectedDateFrom = DateTime(DateTime.now().year);
    _selectedDateTo = DateTime(DateTime.now().year, 12, 31);
    _initList(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();
    _observer?.subscribe(this, context.routeData);
  }

  @override
  void dispose() {
    super.dispose();
    _observer?.unsubscribe(this);
  }

  @override
  void didPopNext() {
    _initList(context);
  }

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () => _selectDateFrom(context),
            child: const Text("Choose date from"),
          ),
          SizedBox(width: Config.defaultPadding),
          ElevatedButton(
            onPressed: () => _selectDateTo(context),
            child: const Text("Choose date to"),
          ),
          SizedBox(width: Config.defaultPadding),
          Text(_selectedDateFrom.formatDate()),
          const Text(" - "),
          Text(_selectedDateTo.formatDate()),
        ],
      ),
    );
  }

  _selectDateFrom(BuildContext context) async {
    final DateTime? selected = await _datePicker(context);
    if (selected != null && selected != _selectedDateFrom) {
      setState(() => _selectedDateFrom = selected);
      _loadByFilters(context);
    }
  }

  _selectDateTo(BuildContext context) async {
    final DateTime? selected = await _datePicker(context);
    if (selected != null && selected != _selectedDateTo) {
      setState(() => _selectedDateTo =
          selected.add(const Duration(hours: 23, minutes: 59, seconds: 59)));
      _loadByFilters(context);
    }
  }

  _datePicker(BuildContext context) {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2099),
    );
  }

  _initList(BuildContext context) {
    context.read<ProjectListCubit>().init(_selectedDateFrom, _selectedDateTo);
  }

  _loadByFilters(BuildContext context) {
    context.read<ProjectListCubit>().find(_selectedDateFrom, _selectedDateTo);
  }
}
