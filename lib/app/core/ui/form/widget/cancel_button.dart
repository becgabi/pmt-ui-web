import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("Cancel"),
      onPressed: () => context.router.navigateBack(),
    );
  }
}
