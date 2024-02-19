import 'package:flutter/material.dart';
import 'package:my_contact_list/assets/colors.dart';
import 'package:my_contact_list/widgets/form_section.dart';
import 'package:my_contact_list/widgets/list_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colors[4],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Contacts List",
          style: TextStyle(color: colors[0], fontSize: 24),
        ),
        backgroundColor: colors[1],
      ),
      body: Center(
        child: Column(
          children: [
            FormSection(),
            ListSection(),
          ],
        ),
      ),
    );
  }
}
