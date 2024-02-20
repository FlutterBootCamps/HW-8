import 'package:flutter/material.dart';
import 'package:hm8/helper/const_colors.dart';
import 'package:hm8/widgets/upper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
         
             decoration: const BoxDecoration(
          
          gradient: LinearGradient(
            colors: [
            blue,
            white,
              
            ], 
            begin: Alignment.topCenter, 
            end: Alignment.bottomCenter, 
          ),
        ),
              child: UpperPart(userDataList: []),
            
        ),
      ),
    );
  }
}

