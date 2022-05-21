import 'package:flutter/material.dart';

abstract class PmtField extends StatelessWidget {
  final String controlName;
  final String text;
  final bool? required;
  final bool? flexible;
  final double? width;

  const PmtField(
      {Key? key,
      required this.controlName,
      required this.text,
      this.required,
      this.flexible,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final field = buildField();
    if (flexible ?? false) {
      return Flexible(child: field);
    }
    if (width != null) {
      return SizedBox(width: width, child: field);
    }
    return field;
  }

  Widget buildField();
}
