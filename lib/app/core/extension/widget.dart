import 'package:fbase_auth_test/app/config/config.dart';
import 'package:flutter/material.dart';

extension WidgetExtension on List<Widget> {
  List<Widget> withSpaceBetween({double? width, double? height}) => [
        for (int i = 0; i < length; i++) ...[
          if (i > 0) SizedBox(width: width, height: height),
          this[i],
        ],
      ];

  List<Widget> withDefaultHorizontalSpaceBetween() =>
      withSpaceBetween(width: Config.defaultPadding);

  List<Widget> withDefaultVerticalSpaceBetween() =>
      withSpaceBetween(height: Config.defaultPadding);
}
