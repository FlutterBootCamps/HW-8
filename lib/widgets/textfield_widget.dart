import 'package:assingment_bloc/constant/spacer.dart';
import 'package:assingment_bloc/extension/screen_helper.dart';
import 'package:assingment_bloc/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, required this.label, required this.controller});
  String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          SizedBox(
            width: context.getWidth() * 0.65,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: label,
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Adjust the radius as needed
                ),
              ),
            ),
          ),
          SizedBox(
            width: AppSpacer.md,
          ),
          Expanded(
            child: ButtonWidget(
              text: 'Clear',
              onPressed: () {
                controller.clear();
              },
            ),
          )
        ],
      ),
    );
  }
}
