// upperwidget.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_6/Extension/storage.dart';
import 'package:hw_6/bloc/user_bloc_bloc.dart';
import 'package:hw_6/constant/colors.dart';
import 'package:hw_6/constant/spaces.dart';

class UpperWidget extends StatefulWidget {
  @override
  _UpperWidgetState createState() => _UpperWidgetState();
}

class _UpperWidgetState extends State<UpperWidget> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  MyStorage _storage = GetIt.instance<MyStorage>();
  late UserBlocBloc _userBlocBloc;

  @override
  void initState() {
    _userBlocBloc = BlocProvider.of<UserBlocBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Name',
              prefixIcon: Icon(Icons.person),
              suffixIcon: IconButton(
                onPressed: () => _nameController.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(child: height16),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
              suffixIcon: IconButton(
                onPressed: () => _emailController.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(child: height16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  _storage.addData(
                    _nameController.text,
                    _emailController.text,
                  );
                  _userBlocBloc.add(PrintEvent());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: bluecolor,
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                ),
                child: Text('Add to List', style: TextStyle(fontSize: 16.0)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
