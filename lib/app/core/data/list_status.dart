import 'package:fbase_auth_test/app/core/extension/build_context.dart';
import 'package:flutter/material.dart';

enum ListStatus {
  uninitialized,
  loading,
  ready,
  failed,
}

extension FormStatusExtension on ListStatus {
  void statusChangeListener(BuildContext context) {
    if (this == ListStatus.failed) {
      context.showErrorSnackBar('Operation failed');
    }
  }
}
