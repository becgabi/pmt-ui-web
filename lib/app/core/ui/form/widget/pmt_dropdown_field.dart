import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:fbase_auth_test/app/core/ui/form/widget/pmt_field.dart';
import 'package:flutter/material.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';

class PmtDropdownField<T extends EnumClass> extends PmtField {
  final BuiltSet<T> items;
  final bool? readOnly;

  const PmtDropdownField(
      {Key? key,
      required this.items,
      required controlName,
      required text,
      this.readOnly,
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
    return ReactiveDropdownSearch<T, T>(
      formControlName: controlName,
      decoration: InputDecoration(hintText: text, labelText: text),
      mode: Mode.MENU,
      items: items.toList(),
      itemAsString: (s) => s?.name ?? '',
      validationMessages: (control) {
        if (this.required ?? false) {
          return {'required': 'Cannot be empty'};
        }
        return {};
      },
    );
  }
}
