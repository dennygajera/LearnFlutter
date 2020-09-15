import 'package:flutter/material.dart';

enum SnackBartype { positive, nagetive }

class CustomSnackBar {
  CustomSnackBar(
      BuildContext objBuildContext, String message, SnackBartype type) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor:
          type == SnackBartype.positive ? Colors.green : Colors.red,
    );
    Scaffold.of(objBuildContext).showSnackBar(snackBar);
  }

  // void showSnackBar(BuildContext objBuildContext, String message) {}
}
