import 'package:backend_api/backend_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/config.dart';
import '../../../../core/ui/widget/rounded_box.dart';
import '../../bloc/colleague_details_cubit.dart';
import '../../bloc/colleague_selector_cubit.dart';

class ColleagueFilter extends StatefulWidget {
  const ColleagueFilter({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ColleagueFilterState();
}

class ColleagueFilterState extends State<ColleagueFilter> {
  int? selectedColleagueId;

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Center(
        child: Row(
          children: [
            _userSelector(context),
            SizedBox(width: Config.defaultPadding),
            ElevatedButton(
              onPressed: () async {
                setState(() => selectedColleagueId = null);
                context.read<ColleagueDetailsCubit>().loadNew();
              },
              child: const Text("New"),
            )
          ],
        ),
      ),
    );
  }

  Widget _userSelector(BuildContext context) {
    return BlocBuilder<ColleagueSelectorCubit, ColleagueSelectorState>(
      builder: (context, state) {
        if ([SelectorStatus.loaded, SelectorStatus.updated]
            .contains(state.status)) {
          return DropdownButton<int>(
              items: colleagueItems(state.result),
              hint: const Text("Select colleague"),
              value: selectedColleagueId,
              onChanged: (value) {
                setState(() => selectedColleagueId = value);
                final selected = state.result.firstWhere((c) => c.id == value);
                context.read<ColleagueDetailsCubit>().loadData(selected);
              });
        } else {
          return DropdownButton<int>(
            items: const [],
            hint: const Text("Not initialized"),
            onChanged: (value) {},
          );
        }
      },
    );
  }
}

List<DropdownMenuItem<int>> colleagueItems(List<Colleague> colleagues) =>
    colleagues
        .map((e) => DropdownMenuItem(value: e.id, child: Text(e.name)))
        .toList();
