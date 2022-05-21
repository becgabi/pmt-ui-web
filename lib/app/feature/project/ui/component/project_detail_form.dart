import 'package:auto_route/auto_route.dart';
import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/extension/string.dart';
import 'package:fbase_auth_test/app/core/extension/widget.dart';
import 'package:fbase_auth_test/app/core/ui/form/value_accessor/partner_value_accessor.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/cancel_button.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_date_time_picker.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_dropdown_field.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_text_field.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/save_button.dart';
import 'package:fbase_auth_test/app/core/ui/widget/rounded_box.dart';
import 'package:fbase_auth_test/app/feature/project/bloc/project_detail_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProjectDetailForm extends StatelessWidget {
  final Project project;
  final List<Partner> partners;

  const ProjectDetailForm(
      {Key? key, required this.project, required this.partners})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: ReactiveForm(
        formGroup: BlocProvider.of<ProjectDetailCubit>(context).state.form!,
        child: Column(
          children: [
            Row(
              children: [
                _nameInput(),
                _projectStartPicker(),
                _projectEndPicker(),
              ].withDefaultHorizontalSpaceBetween(),
            ),
            Row(
              children: [
                _partnerSelect(),
                _phaseSelect(),
                _settlementModeSelect(),
              ].withDefaultHorizontalSpaceBetween(),
            ),
            SizedBox(height: Config.defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SaveButton(onPressed: () => _submitOnPressed(context)),
                const CancelButton(),
              ].withDefaultHorizontalSpaceBetween(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _nameInput() => const PmtTextField(
      controlName: 'name', text: 'Name', required: true, flex: 1);

  Widget _partnerSelect() {
    return Flexible(
      child: ReactiveDropdownSearch<int, Partner>(
        formControlName: 'partnerId',
        decoration: const InputDecoration(labelText: "Partner"),
        mode: Mode.MENU,
        showSearchBox: true,
        items: partners,
        valueAccessor: PartnerValueAccessor(partners),
        itemAsString: (p) => p?.name ?? '',
        filterFn: (partner, filter) =>
            partner?.name.containsIgnoreCase(filter) ?? false,
        validationMessages: (control) => {'required': 'Cannot be empty'},
      ),
    );
  }

  Widget _projectStartPicker() => PmtDateTimePicker(
        controlName: 'projectStart',
        text: 'Project start',
        firstDate: project.projectStart?.toDateTime() ?? DateTime.now(),
        flex: 1,
      );

  Widget _projectEndPicker() => PmtDateTimePicker(
        controlName: 'projectEnd',
        text: 'Project end',
        firstDate: project.projectStart?.toDateTime() ?? DateTime.now(),
        flex: 1,
      );

  Widget _phaseSelect() => PmtDropdownField<PhaseType>(
        items: PhaseType.values,
        controlName: "phase",
        text: "Phase",
        required: true,
        flex: 1,
      );

  Widget _settlementModeSelect() => PmtDropdownField<SettlementMode>(
        items: SettlementMode.values,
        controlName: "settlementMode",
        text: "Settlement",
        required: true,
        flex: 1,
      );

  void _submitOnPressed(BuildContext context) async {
    await BlocProvider.of<ProjectDetailCubit>(context).save();
    context.router.navigateBack();
  }
}
