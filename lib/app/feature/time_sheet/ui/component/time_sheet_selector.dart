import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/extension/datetime.dart';
import 'package:fbase_auth_test/app/core/ui/widget/rounded_box.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/bloc/time_sheet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeSheetSelector extends StatefulWidget {
  const TimeSheetSelector({Key? key}) : super(key: key);

  @override
  TimeSheetSelectorState createState() => TimeSheetSelectorState();
}

class TimeSheetSelectorState extends State<TimeSheetSelector> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () => _selectDate(context),
            child: const Text("Choose date"),
          ),
          SizedBox(width: Config.defaultPadding),
          Text(_selectedDate.formatDate()),
        ],
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2099),
    );
    if (selected != null && selected != _selectedDate) {
      setState(() => _selectedDate = selected);
      context.read<TimeSheetCubit>().initForm(_selectedDate.toDate());
    }
  }
}
