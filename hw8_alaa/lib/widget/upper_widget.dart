import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw8_alaa/bloc/user_info_bloc.dart';
import 'package:hw8_alaa/constant/color.dart';
import 'package:hw8_alaa/constant/spaces.dart';
import 'package:hw8_alaa/helper/helper_screen.dart';
import 'package:hw8_alaa/model/user_info_model.dart';
import 'package:hw8_alaa/widget/button_widget.dart';
import 'package:hw8_alaa/widget/text_field_widget.dart';

List<UserInfoModel> userInfo = [];

class UpperWidget extends StatelessWidget {
  UpperWidget({super.key});

  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight() * 0.5,
      decoration: const BoxDecoration(
        color: greenColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              TextFieldWidget(
                controller: userName,
                labelText: "Name",
                icon: const Icon(
                  Icons.person,
                  color: whiteColor,
                ),
              ),
              TextFieldWidget(
                controller: email,
                labelText: "Email",
                icon: const Icon(
                  Icons.email,
                  color: whiteColor,
                ),
              ),
              height24,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    buttonName: "Add",
                    action: () {
                      BlocProvider.of<UserInfoBloc>(context).add(
                        PersonInfoEvent(
                            userNameEvent: userName.text,
                            emailEvent: email.text),
                      );
                    },
                  ),
                  width40,
                  ButtonWidget(
                    buttonName: "Clear List",
                    action: () {
                      BlocProvider.of<UserInfoBloc>(context).add(
                        ClearListEvent(),
                      );
                      print(" Before user cleear ${userInfo.length}");
                      userInfo.clear();
                      print(" After user cleear ${userInfo.length}");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
