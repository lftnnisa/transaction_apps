import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:transaction_apps/shared/theme.dart';

void showCustomSnackBar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: redColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}