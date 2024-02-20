import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hm8/bloc/c_bloc.dart';
import 'package:hm8/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CBloc(),
      child: const MaterialApp(home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      ),
    );
  }
}
