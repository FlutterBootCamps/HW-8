import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_8/helper/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.title,
    required this.onPress,
  });

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(purple)),
      onPressed: onPress,
      child: Text(
        title,
        style:  GoogleFonts.philosopher(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),
      ),
    );
  }
}
