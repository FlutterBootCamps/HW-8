import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_x8/bloc/user_bloc.dart';
import 'package:hw_x8/model/user.dart';

class DownScreen extends StatelessWidget {
  final List<UserInfo> userList;

  // Constructor to initialize the DownScreen with a list of user information.
  const DownScreen({Key? key, required this.userList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          // Use a ListView.builder to efficiently build a scrolling list.
          return ListView.builder(
            itemCount: userList.length,
            itemBuilder: (context, index) {
              // Get the user information for the current index.
              final userInfo = userList[index];

              // Display user information using a ListTile.
              return ListTile(
                title: Text('Name: ${userInfo.name} - Email: ${userInfo.email}'),
              );
            },
          );
        },
      ),
    );
  }
}
