import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_8/bloc/text_field_logic_bloc.dart';
import 'package:hw_8/widgets/text_field.dart';

import '../constatns/constans.dart';

class UpperField extends StatelessWidget {
  UpperField({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFieldWidget(
                  label: "name",
                  controller: nameController,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: clearButton,
                    ),
                    onPressed: () {
                      BlocProvider.of<TextFieldLogicBloc>(context)
                          .add(ClearTextField(label: nameController.text));
                    },
                    child: const Text(
                      "clear",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            height20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextFieldWidget(
                  label: "email",
                  controller: emailController,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: clearButton,
                    ),
                    onPressed: () {
                      BlocProvider.of<TextFieldLogicBloc>(context)
                          .add(ClearTextField(label: emailController.text));
                    },
                    child: const Text(
                      "clear",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            height20,
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: addButton),
              onPressed: () {
                BlocProvider.of<TextFieldLogicBloc>(context).add(AddItemToList(
                    name: nameController.text, email: emailController.text));
              },
              child: const Text("add",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            height20,
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: clearAll),
              onPressed: () {
                BlocProvider.of<TextFieldLogicBloc>(context).add(ClearAllItem());
              },
              child: const Text("clear list",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
