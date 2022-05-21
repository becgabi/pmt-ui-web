import 'package:flutter/material.dart';

extension ShowSnackBar on BuildContext {
  void showInfoSnackBar(String message) {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.green,
    ));
  }

  void showErrorSnackBar(String message) {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  void showSavedSnackBar() => showInfoSnackBar('Saved successfully!');

  void showDeletedSnackBar() => showInfoSnackBar('Deleted successfully!');
}
