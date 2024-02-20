import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
   const ItemContainer({
    super.key, required this.name, required this.email,
  });
  final String name;
  final String email;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Name: $name"),
            Text("Email: $email"),
          ],
        ),
      ),
    );
  }
}