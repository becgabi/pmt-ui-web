import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_field.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PmtTextField extends PmtField {
  final bool? readOnly;
  final TextInputType? keyboardType;

  const PmtTextField(
      {Key? key,
      required controlName,
      required text,
      this.readOnly,
      required,
      flexible,
      width,
      this.keyboardType})
      : super(
            key: key,
            controlName: controlName,
            text: text,
            required: required,
            flexible: flexible,
            width: width);

  @override
  Widget buildField() {
    return ReactiveTextField(
      formControlName: controlName,
      decoration: InputDecoration(hintText: text, labelText: text),
      readOnly: readOnly ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      validationMessages: (control) {
        if (this.required ?? false) {
          return {'required': 'Cannot be empty'};
        }
        return {};
      },
    );
  }
}
