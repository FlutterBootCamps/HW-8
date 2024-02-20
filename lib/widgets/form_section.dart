import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_contact_list/assets/colors.dart';
import 'package:my_contact_list/bloc/list_bloc.dart';
import 'package:my_contact_list/data%20layer/main_data_layer.dart';
import 'package:my_contact_list/helpers/extensions/screen_helper.dart';
import 'package:my_contact_list/widgets/button_cute.dart';
import 'package:my_contact_list/widgets/icon_button_cute.dart';
import 'package:my_contact_list/widgets/text_field_cute.dart';

// ignore: must_be_immutable
class FormSection extends StatelessWidget {
  FormSection({
    super.key,
  });

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(),
      height: context.getHeight() * .5,
      decoration: BoxDecoration(
          color: colors[1],
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFieldCute(
                  labelText: "Name",
                  hintText: "Enter your name",
                  controller: nameController,
                  icon: const Icon(Icons.person),
                ),
                IconButtonCute(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    nameController.clear();
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFieldCute(
                  labelText: "Email",
                  hintText: "Enter your email",
                  controller: emailController,
                  icon: const Icon(Icons.alternate_email),
                ),
                IconButtonCute(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    emailController.clear();
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonCute(
                    text: "Add Contact",
                    onClick: () {
                      context.read<ListBloc>().add(AddEvent(name: nameController.text, email: emailController.text));
                    }),
                ButtonCute(
                    text: "Clear List",
                    onClick: () {
                      context.read<ListBloc>().add(ClearEvent(list: GetIt.I.get<MainData>().contacts));
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
