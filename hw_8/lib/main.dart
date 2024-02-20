// main.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_6/Extension/storage.dart';
import 'package:hw_6/bloc/user_bloc_bloc.dart';
import 'package:hw_6/home_screen.dart';

void main() {
  setup();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBlocBloc>(
          create: (context) => UserBlocBloc(),
        ),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

void setup() {
  GetIt.instance.registerSingleton(MyStorage());
}
