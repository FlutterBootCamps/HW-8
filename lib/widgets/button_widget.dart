import 'package:assingment_bloc/constant/colors.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key, required this.text, required this.onPressed});
  String text;
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      child: Text(
        text,
        style: TextStyle(color:textColor),
      ),
      onPressed: onPressed,
    );
  }
}
