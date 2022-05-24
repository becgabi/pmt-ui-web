import 'package:backend_api/src/model/project.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_text_field.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/save_button.dart';
import 'package:fbase_auth_test/app/core/ui/widget/rounded_box.dart';
import 'package:fbase_auth_test/app/core/extension/widget.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/bloc/time_sheet_cubit.dart';
import 'package:fbase_auth_test/app/feature/time_sheet/bloc/time_sheet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class TimeSheetItemList extends StatelessWidget {
  const TimeSheetItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimeSheetCubit, TimeSheetState>(
      buildWhen: (previous, current) => previous.form != current.form,
      builder: (context, state) => state.form == null
          ? Container()
          : Row(children: [
              Expanded(
                child: RoundedBox(
                  child: ReactiveForm(
                    formGroup: state.form!,
                    child: Column(
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.projects.length,
                          itemBuilder: (context, index) {
                            final project = state.projects[index];
                            return ReactiveFormArray(
                              formArrayName: 'timeSheetItems',
                              builder: (context, formArray, child) => Row(
                                children: [
                                  _buildProjectName(project),
                                  _buildHours(index),
                                  _buildMinutes(index),
                                  _buildDescription(index),
                                ].withDefaultHorizontalSpaceBetween(),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: Config.defaultPadding),
                        Row(
                          children: [
                            _buildSumText(),
                            _buildSumHours(),
                            _buildSumMinutes(),
                            Expanded(flex: 4, child: Container())
                          ].withDefaultHorizontalSpaceBetween(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SaveButton(
                                onPressed: () => _saveOnPressed(context)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: Container())
            ]),
    );
  }

  Expanded _buildProjectName(Project project) => Expanded(
        flex: 2,
        child: Text(project.name),
      );

  PmtTextField _buildHours(int index) => PmtTextField(
        controlName: '$index.hours',
        text: 'Hours',
        keyboardType: TextInputType.number,
        required: true,
        flex: 1,
      );

  PmtTextField _buildMinutes(int index) => PmtTextField(
        controlName: '$index.minutes',
        text: 'Minutes',
        keyboardType: TextInputType.number,
        required: true,
        flex: 1,
      );

  PmtTextField _buildDescription(int index) => PmtTextField(
        controlName: '$index.description',
        text: 'Description',
        flex: 4,
      );

  Expanded _buildSumText() => const Expanded(
        flex: 2,
        child: Text('Sum'),
      );

  PmtTextField _buildSumHours() => const PmtTextField(
        controlName: 'sumHours',
        text: 'Hours',
        readOnly: true,
        flex: 1,
      );

  PmtTextField _buildSumMinutes() => const PmtTextField(
        controlName: 'sumMinutes',
        text: 'Minutes',
        readOnly: true,
        flex: 1,
      );

  Future<void> _saveOnPressed(BuildContext context) async =>
      await BlocProvider.of<TimeSheetCubit>(context).save();
}
