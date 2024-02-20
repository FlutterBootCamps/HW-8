import 'package:flutter/material.dart';
import 'package:hw8_alaa/constant/spaces.dart';
import 'package:hw8_alaa/widget/lower_widget.dart';
import 'package:hw8_alaa/widget/upper_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UpperWidget(),
          height12,
          const LowerWidget(),
        ],
      ),
    );
  }
}
