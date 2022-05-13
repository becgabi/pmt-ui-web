import 'package:flutter/material.dart';

import '../../../config/config.dart';

class RoundedBox extends StatelessWidget {

  final Widget? child;
  final Color? color;

  const RoundedBox({Key? key, this.child, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Config.defaultPadding),
      decoration: BoxDecoration(
        color: color ?? Config.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(Config.defaultPadding / 2)),
        border: Border.all(color: Colors.white10),
      ),
      child: child,
    );
  }
}
