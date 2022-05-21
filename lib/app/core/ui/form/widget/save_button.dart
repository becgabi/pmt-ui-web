import 'package:fbase_auth_test/app/core/ui/form/widget/form_button.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const SaveButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormButton(text: "Save", onPressed: onPressed, validation: true);
  }
}
