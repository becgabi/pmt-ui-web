import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/config/config.dart';
import 'package:fbase_auth_test/app/core/cubit/pmt_form_state.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/cancel_button.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_dropdown_field.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_text_field.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/save_button.dart';
import 'package:fbase_auth_test/app/core/ui/widget/rounded_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../bloc/colleague_details_cubit.dart';

class ColleagueDetails extends StatelessWidget {
  const ColleagueDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColleagueDetailsCubit, PmtFormState>(
      buildWhen: (previous, current) => previous.form != current.form,
      builder: (context, state) {
        return RoundedBox(
          child: ReactiveForm(
            formGroup: state.form!,
            child: Column(
              children: [
                const PmtTextField(controlName: 'ldapId', text: 'LDAP ID'),
                const PmtTextField(
                    controlName: 'name', text: 'Name', required: true),
                _roleSelect(),
                _typeSelect(),
                _statusSelect(),
                const PmtTextField(controlName: 'email', text: 'E-mail'),
                const PmtTextField(controlName: 'address', text: 'Address'),
                const PmtTextField(controlName: 'phone', text: 'Phone'),
                const PmtTextField(
                    controlName: 'bankAccountNumber',
                    text: 'Bank account number'),
                SizedBox(height: Config.defaultPadding),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SaveButton(onPressed: () => _submitOnPressed(context)),
                  SizedBox(width: Config.defaultPadding),
                  const CancelButton(),
                ]),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _roleSelect() => PmtDropdownField<Role>(
        items: Role.values,
        controlName: "role",
        text: "Role",
        required: true,
      );

  Widget _typeSelect() => PmtDropdownField<ColleagueType>(
        items: ColleagueType.values,
        controlName: "type",
        text: "Type",
        required: true,
      );

  Widget _statusSelect() => PmtDropdownField<ColleagueStatus>(
        items: ColleagueStatus.values,
        controlName: "status",
        text: "Status",
        required: true,
      );

  void _submitOnPressed(BuildContext context) async {
    await BlocProvider.of<ColleagueDetailsCubit>(context).save();
  }
}
