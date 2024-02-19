import 'package:flutter/material.dart';
import 'package:my_contact_list/assets/colors.dart';

class ButtonCute extends StatelessWidget {
  const ButtonCute({
    super.key,
    required this.text,
    this.onClick,
  });

  final String text;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(Size(40, 40)),
          backgroundColor: MaterialStatePropertyAll(colors[2]),
          overlayColor: MaterialStatePropertyAll(colors[3]),
          side:
              MaterialStatePropertyAll(BorderSide(color: colors[4], width: 2))),
      child: Text(
        text,
        style: TextStyle(color: colors[0], fontSize: 18),
      ),
    );
  }
}
