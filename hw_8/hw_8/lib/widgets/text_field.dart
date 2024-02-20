import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_8/bloc/text_field_logic_bloc.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.controller,
    required this.label,
  }) : super(key: key);

  final TextEditingController? controller;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 200,
          child: BlocBuilder<TextFieldLogicBloc, TextFieldLogicState>(
            builder: (context, state) {
              String? textFieldValue;
              if (state is SuccessState) {
                textFieldValue = state.textField;
              }

              if (textFieldValue != null) {
                controller?.text = textFieldValue;
              }

              return TextField(
                controller: controller,
                decoration: InputDecoration(
                  labelText: label,
                  hintText: "Enter Your $label",
                  errorText: state is ErrorState ? 'Error' : null,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
