import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.text, required this.width, this.onTap});

  final double width;
  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(width, 60),
      ),
      child: Text(text),
    );
  }
}
