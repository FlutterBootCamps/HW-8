import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_contact_list/bloc/list_bloc.dart';
import 'package:my_contact_list/screens/home_page.dart';
import 'package:my_contact_list/utils/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
