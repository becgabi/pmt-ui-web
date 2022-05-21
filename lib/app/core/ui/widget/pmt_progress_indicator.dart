import 'package:flutter/material.dart';

class PmtProgressIndicator extends StatelessWidget {
  const PmtProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: const Center(child: CircularProgressIndicator()));
  }
}
