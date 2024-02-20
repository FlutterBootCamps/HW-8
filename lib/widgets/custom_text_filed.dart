import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final TextEditingController? controller;
  final String title;

  CustomText({Key? key, this.controller, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: title,
          border: const OutlineInputBorder(),
          labelText: title,
        ),
      ),
    );
  }
}