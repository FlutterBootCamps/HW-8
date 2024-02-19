import 'package:flutter/material.dart';
import 'package:my_contact_list/assets/colors.dart';

extension SnackBarShow on BuildContext {
  showSnackBar(String text, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: colors[1],
        content: Text(
          text,
          style: TextStyle(color: colors[0]),
        )));
  }
}
