import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hw_6/main.dart';

import '../bloc/person_information_bloc.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  // Create an instance of the ContactInfoGetStorge class

  @override
  Widget build(BuildContext context) {
  return Expanded(
    child: Container(
      color: const Color.fromARGB(255, 121, 144, 184),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width * 0.9,
        child: BlocBuilder<PersonInformationBloc, PersonInformationState>(
          builder: (context, state) {
              if(state is ChangeList)
              {return ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Name: ${list.elementAt(index).name}"),
                    subtitle: Text("Email: ${list.elementAt(index).email}"),
                  );
                },
                separatorBuilder: (context, index) => Divider(), // Add a divider between items
                itemCount:list.length
              );}else
              {return const Center(child: CircularProgressIndicator());}
          },
        ),
      ),
    ),
  );
}       
          }
