import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.labelText,
    required this.hintText,
    this.controller,
  }) : super(key: key);

  final String labelText; // Text displayed as the label for the text field.
  final String hintText; // Text displayed as a hint in the text field.
  final TextEditingController? controller; // Controller for the text field.

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 260,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: labelText, 
              hintText: hintText,
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              icon: const Icon(Icons.verified_user),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
