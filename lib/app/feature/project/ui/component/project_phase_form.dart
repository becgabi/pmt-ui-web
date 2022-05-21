import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/cubit/pmt_form_state.dart';
import 'package:fbase_auth_test/app/core/data/form_status.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/form_button.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_date_time_picker.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_dropdown_field.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_text_field.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/save_button.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_phase_cubit.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_phase_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProjectPhaseForm extends StatelessWidget {
  final int projectId;

  const ProjectPhaseForm({Key? key, required this.projectId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectPhaseCubit, PmtFormState>(
      buildWhen: (_, current) => current.status == FormStatus.loaded,
      builder: (context, state) => ReactiveForm(
        formGroup: BlocProvider.of<ProjectPhaseCubit>(context).state.form!,
        child: Column(
          children: [
            const PmtTextField(
                controlName: 'name', text: 'Name', required: true),
            const PmtTextField(controlName: 'description', text: 'Description'),
            _phaseTypeSelect(),
            _phaseStartPicker(),
            _phaseEndPicker(),
            _deadlinePicker(),
            SizedBox(height: Config.defaultPadding),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              SaveButton(onPressed: () => _saveOnPressed(context)),
              SizedBox(width: Config.defaultPadding),
              _newButton(context),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _phaseTypeSelect() {
    return PmtDropdownField(
      items: PhaseType.values,
      controlName: "phaseType",
      text: "Phase type",
      required: true,
    );
  }

  _phaseStartPicker() => const PmtDateTimePicker(
        controlName: 'phaseStart',
        text: 'Phase start',
      );

  _phaseEndPicker() => const PmtDateTimePicker(
        controlName: 'phaseEnd',
        text: 'Phase end',
      );

  _deadlinePicker() => const PmtDateTimePicker(
        controlName: 'deadline',
        text: 'Deadline',
      );

  FormButton _newButton(BuildContext context) => FormButton(
        text: "New",
        validation: false,
        onPressed: () => _newOnPressed(context),
      );

  void _newOnPressed(BuildContext context) {
    BlocProvider.of<ProjectPhaseCubit>(context).newProjectPhase(projectId);
  }

  Future<void> _saveOnPressed(BuildContext context) async {
    await BlocProvider.of<ProjectPhaseCubit>(context).save();
    await BlocProvider.of<ProjectPhaseListCubit>(context).load(projectId);
  }
}
