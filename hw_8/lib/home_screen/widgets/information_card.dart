import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_8/model/person_model.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key, required this.person});
  final Persons person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "name: ${person.name}",
                    style: GoogleFonts.philosopher(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "email: ${person.email}",
                    style: GoogleFonts.philosopher(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
