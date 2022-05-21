import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_field.dart';
import 'package:flutter/material.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';

class PmtDateTimePicker extends PmtField {
  final DateTime? firstDate;

  const PmtDateTimePicker(
      {Key? key,
      required controlName,
      required text,
      this.firstDate,
      required,
      flex,
      width})
      : super(
            key: key,
            controlName: controlName,
            text: text,
            required: required,
            flex: flex,
            width: width);

  @override
  Widget buildField() {
    return ReactiveDateTimePicker(
      formControlName: controlName,
      decoration: InputDecoration(
        labelText: text,
        hintText: text,
        suffixIcon: const Icon(Icons.calendar_today),
      ),
      firstDate: firstDate,
      valueAccessor: DateTimeValueAccessor(),
      validationMessages: (control) {
        if (this.required ?? false) {
          return {'required': 'Cannot be empty'};
        }
        return {};
      },
    );
  }
}
