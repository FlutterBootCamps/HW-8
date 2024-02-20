import 'package:flutter/material.dart';
import 'package:hw8_alaa/constant/color.dart';
import 'package:hw8_alaa/helper/helper_screen.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.labelText,
      required this.icon,
      required this.controller});

  final String labelText;
  final Icon icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWight() * 0.75,
      height: context.getHeight() * 0.15,
      child: Center(
        child: TextField(
          controller: controller,
          style: const TextStyle(color: whiteColor),
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: whiteColor, width: 8),
            ),
            floatingLabelStyle: const TextStyle(color: whiteColor),
            prefixIcon: icon,
            suffixIcon: InkWell(
              onTap: () {
                controller.clear();
              },
              child: const Icon(
                Icons.close,
                color: greyColor,
              ),
            ),
            labelText: labelText,
            labelStyle: const TextStyle(color: whiteColor),
            hintText: "Enter Your $labelText",
            hintStyle: const TextStyle(color: whiteColor),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
