import 'package:fbase_auth_test/app/core/extension/build_context.dart';
import 'package:flutter/material.dart';

enum ItemStatus {
  uninitialized,
  loading,
  loaded,
  saving,
  saved,
  deleting,
  deleted,
  failed
}

extension ItemStatusExtension on ItemStatus {
  bool isInProgress() => [
        ItemStatus.loading,
        ItemStatus.saving,
        ItemStatus.deleting,
      ].contains(this);

  bool inProgressChanged(ItemStatus status) =>
      isInProgress() != status.isInProgress();

  void statusChangeListener(BuildContext context) {
    if (this == ItemStatus.saved) {
      context.showSavedSnackBar();
    }

    if (this == ItemStatus.deleted) {
      context.showDeletedSnackBar();
    }

    if (this == ItemStatus.failed) {
      context.showErrorSnackBar('Operation failed');
    }
  }
}
