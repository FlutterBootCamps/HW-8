import 'package:flutter/material.dart';
import '../component/custom_button.dart';
import '../component/custom_text_field.dart';

class MyWidget extends StatefulWidget {
  MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // Create a TextEditingController for the text field
  final TextEditingController nameFieldController = TextEditingController();
  final TextEditingController emailFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                controller: nameFieldController, name: "enter the name"),
            const SizedBox(
              height: 20,
            ),
            // Add a custom button with the controller and a callback function
            CustomButton(
              number: 1,
              controller: nameFieldController,
              callback: () {
                // Do something when the button is pressed
              },
              text: 'clear',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                controller: emailFieldController, name: "enter the email"),
            // Add a custom button with the controller and a callback function
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              number: 1,
              controller: emailFieldController,
              callback: () {
                // Do something when the button is pressed
              },
              text: 'clear',
            ),
            // Add a text field with the controller
            const SizedBox(
              height: 20,
            ),

            CustomButton(
              number: 2,
              controlleremail: emailFieldController,
              controllername: nameFieldController,
              callback: () {
                // Do something when the button is pressed
              },
              text: 'add',
            ),

            const SizedBox(
              height: 20,
            ),
            CustomButton(
              number: 3,
              callback: () {
                // Do something when the button is pressed
              },
              text: 'clear list',
            ),
          ],
        ),
      ),
    );
  }
}
