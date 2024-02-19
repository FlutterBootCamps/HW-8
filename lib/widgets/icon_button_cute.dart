import 'package:flutter/material.dart';
import 'package:my_contact_list/assets/colors.dart';

class IconButtonCute extends StatelessWidget {
  const IconButtonCute({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final Icon icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(colors[2]),
          overlayColor: MaterialStatePropertyAll(colors[3]),
          side:
              MaterialStatePropertyAll(BorderSide(color: colors[4], width: 2)),
          fixedSize: const MaterialStatePropertyAll(Size(50, 50))),
    );
  }
}
