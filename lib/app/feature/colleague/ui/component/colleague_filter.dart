import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/feature/colleague/repository/colleague_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/config.dart';
import '../../../../core/ui/widget/rounded_box.dart';
import '../../bloc/colleague_selector_cubit.dart';

class ColleagueFilter extends StatefulWidget {
  final void Function(BuildContext context, Colleague selected) onChanged;
  final bool filterCurrentColleague;
  final void Function(BuildContext context)? newPress;

  const ColleagueFilter(
      {Key? key,
      required this.onChanged,
      this.newPress,
      this.filterCurrentColleague = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => ColleagueFilterState();
}

class ColleagueFilterState extends State<ColleagueFilter> {
  int? selectedColleagueId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColleagueSelectorCubit(
          repository: RepositoryProvider.of<ColleagueRepository>(context))
        ..init(widget.filterCurrentColleague),
      child: RoundedBox(
        child: Center(
          child: Row(
            children: [
              _userSelector(context),
              if (widget.newPress != null)
                SizedBox(width: Config.defaultPadding),
              if (widget.newPress != null)
                ElevatedButton(
                  onPressed: () async {
                    setState(() => selectedColleagueId = null);
                    widget.newPress!(context);
                  },
                  child: const Text("New"),
                )
            ],
          ),
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
                widget.onChanged(context, selected);
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
