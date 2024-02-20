// home_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_6/bloc/user_bloc_bloc.dart';
import 'package:hw_6/models/lowerwidget.dart';
import 'package:hw_6/models/upperwidget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          UpperWidget(),
          Expanded(
            child: LowerWidget(),
          ),
        ],
      ),
    );
  }
}
