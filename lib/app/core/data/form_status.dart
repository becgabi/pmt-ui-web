import 'package:fbase_auth_test/app/core/extension/build_context.dart';
import 'package:flutter/material.dart';

enum FormStatus {
  /// The state does not contain any data to be edited.
  empty,

  /// Data loading in progress
  /// This is a signal for showing a (loading) progress indicator not an end state.
  loading,

  /// Data is loaded and has not modified yet yet.
  loaded,

  /// Data saving in progress.
  /// This is a signal for showing a (saving) progress indicator not an end state.
  saving,

  /// Indicates that the data has been saved successfully.
  /// This is s signal for showing a saving succeeded snackbar not an end state.
  saved,

  /// Data deleting in progress (signaling that a progress indicator must be showed).
  /// This is a signal for showing a (deleting) progress indicator not an end state.
  deleting,

  /// Indicates that the data has been deleted successfully
  /// This is s signal for showing a deletion succeeded snackbar not an end state.
  deleted,

  /// Indicates a failure during any bloc/cubit process.
  /// This is s signal for showing an error snackbar not an end state.
  failed
}

extension FormStatusExtension on FormStatus {
  bool isInProgress() => [
        FormStatus.loading,
        FormStatus.saving,
        FormStatus.deleting
      ].contains(this);

  void statusChangeListener(BuildContext context) {
    if (this == FormStatus.saved) {
      context.showSavedSnackBar();
    }
    if (this == FormStatus.deleted) {
      context.showDeletedSnackBar();
    }
    if (this == FormStatus.failed) {
      context.showErrorSnackBar('Operation failed');
    }
  }
}
