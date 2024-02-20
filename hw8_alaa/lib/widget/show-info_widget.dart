import 'package:flutter/material.dart';
import 'package:hw8_alaa/constant/color.dart';
import 'package:hw8_alaa/helper/helper_screen.dart';

class ShowUserInfo extends StatelessWidget {
  const ShowUserInfo({super.key, required this.userName, required this.email});

  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: context.getWight() * 0.85,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: green1Color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border(bottom: BorderSide(color: greenColor, width: 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Name:"),
            Text(userName),
            const Text(" | "),
            const Text("Email:"),
            Text(email),
          ],
        ),
      ),
    );
  }
}
