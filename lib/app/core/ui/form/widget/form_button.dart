import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FormButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool? validation;

  const FormButton(
      {Key? key, required this.text, required this.onPressed, this.validation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context, form, child) => ElevatedButton(
        child: Text(text),
        onPressed: !(validation ?? true) || form.valid == true
            ? onPressed
            : null,
      ),
    );
  }
}
