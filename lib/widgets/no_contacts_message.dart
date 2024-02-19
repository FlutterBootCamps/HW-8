import 'package:flutter/material.dart';
import 'package:my_contact_list/assets/colors.dart';

class NoContactsMessage extends StatelessWidget {
  const NoContactsMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "No Contacts Available!",
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: colors[1]),
    ));
  }
}
