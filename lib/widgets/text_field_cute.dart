import 'package:flutter/material.dart';
import 'package:my_contact_list/assets/colors.dart';

class TextFieldCute extends StatelessWidget {
  const TextFieldCute({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.icon,
  });
  final String labelText;
  final String hintText;
  final Icon icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: TextField(
        clipBehavior: Clip.hardEdge,
        style: TextStyle(color: colors[0]),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            prefixIcon: icon,
            filled: true,
            fillColor: colors[2],
            labelStyle: TextStyle(
              color: colors[0],
            ),
            hintStyle: TextStyle(
              color: colors[0],
            ),
            labelText: labelText,
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colors[4], width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colors[3], width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20)))),
        controller: controller,
      ),
    );
  }
}
