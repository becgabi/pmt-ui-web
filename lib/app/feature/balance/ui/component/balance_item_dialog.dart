import 'package:backend_api/backend_api.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_text_field.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/save_button.dart';
import 'package:fbase_auth_test/app/feature/balance/bloc/balance_cubit.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class BalanceItemDialog extends StatelessWidget {
  final String text;
  final BalanceItem item;
  final BalanceCubit cubit;

  const BalanceItemDialog(
      {Key? key, required this.text, required this.item, required this.cubit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = _buildForm();
    return ReactiveForm(
      formGroup: form,
      child: AlertDialog(
        title: Text(text),
        content: SizedBox(
          height: 230,
          width: 250,
          child: Column(
            children: [
              _buildTitleField(),
              _buildValueField(),
              _buildCommentField(),
            ],
          ),
        ),
        actions: <Widget>[
          if (item.id != null) _buildDeleteButton(context),
          _buildCancelButton(context),
          SaveButton(onPressed: () => _saveOnPressed(context, form)),
        ],
      ),
    );
  }

  FormGroup _buildForm() => fb.group({
        'title': [item.title, Validators.required],
        'value': [item.value, Validators.required],
        'comment': [item.comment],
      });

  PmtTextField _buildTitleField() =>
      const PmtTextField(controlName: 'title', text: 'Title', required: true);

  PmtTextField _buildValueField() => const PmtTextField(
        controlName: 'value',
        text: 'Value',
        required: true,
        keyboardType: TextInputType.number,
      );

  PmtTextField _buildCommentField() =>
      const PmtTextField(controlName: 'comment', text: 'Comment');

  ElevatedButton _buildDeleteButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        cubit.delete(item.id!);
        Navigator.of(context).pop();
      },
      style: ElevatedButton.styleFrom(primary: Colors.red),
      child: const Text('Delete'),
    );
  }

  ElevatedButton _buildCancelButton(BuildContext context) => ElevatedButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Text('Close'),
      );

  void _saveOnPressed(BuildContext context, FormGroup form) {
    final balanceItem = item.rebuild((i) => i
      ..title = form.control('title').value
      ..value = form.control('value').value
      ..comment = form.control('comment').value);
    cubit.save(balanceItem);
    Navigator.of(context).pop();
  }
}
