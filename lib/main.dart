import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_6/model/model.dart';
import 'bloc/person_information_bloc.dart';
import 'screen/lower_part.dart';
import 'screen/upper.dart';
List<ContactInfo> list=[];

void main() async {

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonInformationBloc(),
      child: MaterialApp(
        home: Scaffold(
          body: Center(
              child: Column(
            children: [MyWidget(), ContactList()],
          )),
        ),
      ),
    );
  }
}
