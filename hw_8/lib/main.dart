import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hw_8/bloc/listchanges_bloc.dart';
import 'package:hw_8/home_screen/data/data.dart';
import 'package:hw_8/home_screen/home_screen.dart';

void main() async {
  await GetStorage.init();
  GetIt.instance;
  GetIt.I.registerSingleton<PersonsData>(PersonsData());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ListchangesBloc(),
        child: MaterialApp(
          home: HomePage(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
