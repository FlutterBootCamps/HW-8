import 'package:flutter/material.dart';
import 'package:my_contact_list/assets/colors.dart';
import 'package:my_contact_list/helpers/extensions/screen_helper.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.name,
    required this.email,
  });

  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth() * 0.9,
      height: context.getHeight() * .1,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: colors[2], width: 2))),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: colors[1],
            child: Icon(
              Icons.person,
              color: colors[4],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name: $name",
                style: TextStyle(color: colors[1], fontWeight: FontWeight.bold),
              ),
              Text(
                "Email: $email",
                style: TextStyle(color: colors[1], fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
