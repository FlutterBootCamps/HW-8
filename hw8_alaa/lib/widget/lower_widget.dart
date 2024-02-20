import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw8_alaa/bloc/user_info_bloc.dart';
// import 'package:hw8_alaa/constant/color.dart';
// import 'package:hw8_alaa/constant/spaces.dart';
// import 'package:hw8_alaa/helper/helper_screen.dart';
import 'package:hw8_alaa/model/user_info_model.dart';
import 'package:hw8_alaa/widget/show-info_widget.dart';
import 'package:hw8_alaa/widget/upper_widget.dart';

class LowerWidget extends StatelessWidget {
  const LowerWidget({super.key });
  

  @override
  Widget build(BuildContext context) {
    return  Expanded(
            child: BlocBuilder<UserInfoBloc, UserInfoState>(
              builder: (context, state) {
                if (state is AddState) {
                  // print(" before user added ${userInfo.length}");

                  userInfo.add(UserInfoModel(
                      userName: state.userName, email: state.email));
                  // print(" After user adde ${userInfo.length}");

                  return ListView.builder(
                    itemCount: userInfo.length,
                    itemBuilder: (context, index) {
                      return ShowUserInfo(
                          userName: userInfo[index].userName,
                          email: userInfo[index].email);
                    },
                  );
                }
                if (state is ClearListState) {
                  print(" before user cleear ${userInfo.length}");

                  // userInfo.clear();
                  print(" After user cleear ${userInfo.length}");

                  return ListView.builder(
                    itemCount: userInfo.length,
                    itemBuilder: (context, index) {
                      return ShowUserInfo(
                          userName: userInfo[index].userName,
                          email: userInfo[index].email);
                    },
                  );
                }
                return const Text("There Is No Data For Users Here");
              },
            ),
          );




    // );
  }
}
