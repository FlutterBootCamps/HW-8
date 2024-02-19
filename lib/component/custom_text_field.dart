import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.name,
  });

  final TextEditingController controller;
  final String name;
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            focusColor: Colors.amber,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))),
            filled: true,
            fillColor: Colors.white,
            hintText: name,
            border: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 5, color: Colors.grey.shade900))));
  }
}
