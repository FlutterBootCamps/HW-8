// lowerwidget.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_6/Extension/storage.dart';
import 'package:hw_6/bloc/user_bloc_bloc.dart';

class LowerWidget extends StatefulWidget {
  @override
  State<LowerWidget> createState() => LowerWidgetState();
}

class LowerWidgetState extends State<LowerWidget> {
  MyStorage _storage = GetIt.instance<MyStorage>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: BlocBuilder<UserBlocBloc, UserBlocState>(
              builder: (context, state) {
                if (state is SuccessState) {
                  return ListView.builder(
                    itemCount: _storage.dataList.length,
                    itemBuilder: (context, index) {
                      final user = _storage.dataList[index];
                      final name = user['name'] ?? '';
                      final email = user['email'] ?? '';
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: ListTile(
                          title: Row(
                            children: [
                              Text('Name: $name  '),
                              Text('Email: $email'),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                _storage.clearData();
                BlocProvider.of<UserBlocBloc>(context).add(PrintEvent());
              },
              child: Text('Clear List'),
            ),
          ),
        ],
      ),
    );
  }
}
