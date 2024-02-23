import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_x8/bloc/user_bloc.dart';
import 'package:hw_x8/model/user.dart';
import 'package:hw_x8/widgets/Button_widget.dart';
import 'package:hw_x8/widgets/list_widget.dart';
import 'package:hw_x8/widgets/text_field_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Section for handling Name input and clear button
            Row(
              children: [
                BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    if (state is ClearStateName) {
                      // Text field for entering Name when ClearStateName is active.
                      return TextFieldWidget(
                        labelText: "Name",
                        hintText: "Name",
                        controller: controller1,
                      );
                    } else {
                      // Text field for entering Name when ClearStateName is not active.
                      return TextFieldWidget(
                        labelText: "Name",
                        hintText: "Name",
                        controller: controller1,
                      );
                    }
                  },
                ),
                // Button to trigger clearing the Name input.
                ButtonWidget(
                  text: "Clear",
                  width: 70,
                  onTap: () {
                    // Dispatch ClearEventName when the "Clear" button is tapped.
                    BlocProvider.of<UserBloc>(context).add(ClearEventName(
                        name: controller1.text, controller1: controller1));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Section for handling Email input and clear button
            Row(
              children: [
                BlocBuilder<UserBloc, UserState>(
                  builder: (context, state) {
                    if (state is ClearStateEmail) {
                      // Text field for entering Email when ClearStateEmail is active.
                      return TextFieldWidget(
                        labelText: "Email",
                        hintText: "Email",
                        controller: controller2,
                      );
                    } else {
                      // Text field for entering Email when ClearStateEmail is not active.
                      return TextFieldWidget(
                        labelText: "Email",
                        hintText: "Email",
                        controller: controller2,
                      );
                    }
                  },
                ),
                // Button to trigger clearing the Email input.
                ButtonWidget(
                  text: "Clear",
                  width: 70,
                  onTap: () {
                    // Dispatch ClearEventEmail when the "Clear" button is tapped.
                    BlocProvider.of<UserBloc>(context).add(ClearEventEmail(
                        email: controller2.text, controller2: controller2));
                  },
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            // Button to trigger adding a new user with Name and Email to the list.
            ButtonWidget(
              text: 'Add',
              width: 150,
              onTap: () {
                // Dispatch AddEvent to add a new user to the list.
                BlocProvider.of<UserBloc>(context).add(
                  AddEvent(
                      name: controller1.text, email: controller2.text),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            // Button to trigger clearing the entire user list.
            ButtonWidget(
              text: 'Clear List',
              width: 150,
              onTap: () {
                // Dispatch ClearEvent to clear the entire user list.
                BlocProvider.of<UserBloc>(context).add(
                  ClearEvent(
                      name: controller1.text, email: controller2.text),
                );
              },
            ),
            // BlocBuilder to display the user list or a message based on the state.
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                if (state is AddState) {
                  // Display the user list when AddState is active.
                  return DownScreen(userList: state.listUser);
                } else if (state is ClearState) {
                  // Display the user list when ClearState is active.
                  return DownScreen(userList: state.listUser);
                } else {
                  // Display a message when the list is empty.
                  return Text("List is Empty");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
