import 'package:flutter/material.dart';
import 'package:hw_8/constatns/constans.dart';
import 'package:hw_8/widgets/lower_field.dart';
import 'package:hw_8/widgets/upper_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        title: Text(
          "BLoC",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [UpperField(), LowerField()],
        ),
      ),
    );
  }
}
