import 'package:flutter/material.dart';

abstract class PmtField extends StatelessWidget {
  final String controlName;
  final String text;
  final bool? required;
  final int? flex;
  final double? width;

  const PmtField(
      {Key? key,
      required this.controlName,
      required this.text,
      this.required,
      this.flex,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final field = buildField();
    if (flex != null) {
      return Expanded(flex: flex!, child: field);
    }
    if (width != null) {
      return SizedBox(width: width, child: field);
    }
    return field;
  }

  Widget buildField();
}
