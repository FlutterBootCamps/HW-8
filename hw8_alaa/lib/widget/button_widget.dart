import 'package:flutter/material.dart';
import 'package:hw8_alaa/constant/color.dart';
import 'package:hw8_alaa/helper/helper_screen.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.buttonName, this.action});
  final String buttonName;
  final Function()? action;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: 
          action,
        child: Container(
            height: context.getHeight() * 0.045,
            width: context.getWight() * 0.2,
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                buttonName,
                style: const TextStyle(color: greenColor),
              ),
            )),
      ),
    );
  }
}
