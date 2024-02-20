import 'package:assingment_bloc/bloc/list_bloc_bloc.dart';
import 'package:assingment_bloc/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListBlocBloc(),
      child: MaterialApp(home: HomePage()),
    );
  }
}
