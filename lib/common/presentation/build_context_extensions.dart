import 'package:flutter/material.dart';

extension BuildContextExtentions on BuildContext {
  void errorSnackBar(Error? e) {
    final errorMessage = e?.toString() ?? 'Unknown error';
    final snackBar = SnackBar(
      content: Text(errorMessage),
      action: SnackBarAction(
        label: 'Print stacktrace',
        onPressed: () => debugPrintStack(stackTrace: e?.stackTrace),
      ),
    );
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
