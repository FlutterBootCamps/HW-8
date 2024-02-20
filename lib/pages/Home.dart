import 'package:assingment_bloc/bloc/list_bloc_bloc.dart';
import 'package:assingment_bloc/constant/colors.dart';
import 'package:assingment_bloc/models/person.dart';
import 'package:assingment_bloc/widgets/button_widget.dart';
import 'package:assingment_bloc/widgets/card_list_widget.dart';
import 'package:assingment_bloc/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 40.0),
          child: Column(children: [
            TextFieldWidget(
              label: "Name",
              controller: controllerName,
            ),
            TextFieldWidget(
              label: "Email",
              controller: controllerEmail,
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget(
              text: "Add",
              onPressed: () {
                BlocProvider.of<ListBlocBloc>(context).add(AddListEvent(
                  person: Person(
                      name: controllerName.text, email: controllerEmail.text),
                ));
              },
            ),
            ButtonWidget(
              text: "Clear List",
              onPressed: () {
                BlocProvider.of<ListBlocBloc>(context).add(ClearListEvent());
              },
            ),
            Expanded(
              child: Column(
                children: [
                  BlocBuilder<ListBlocBloc, ListBlocState>(
                    builder: (context, state) {
                      if (state is SuccessState) {
                        return Center(
                            child: ListView(
                          shrinkWrap: true,
                          children: [
                            for (Person person in state.persons)
                              CardLisWidget(
                                person: person,
                              )
                          ],
                        ));
                      } else {
                        return const Text("no result");
                      }
                    },
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
