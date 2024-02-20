import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:h6/bloc/user_bloc.dart';
import 'package:h6/data_layer/user.dart';
import 'package:h6/model/user.data.dart';
import 'package:h6/widgets/Text_Felid.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Add this import

class HomePage extends StatelessWidget {
  @override

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  List<Map<String, String>> UserData = [];

  // Initialize SharedPreferences
  late SharedPreferences prefs;

  @override
  void initState() {
   
    initializeSharedPreferences();
  }

  // Function to initialize SharedPreferences
  void initializeSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFelidWidget(hintText: 'Enter your name', labelText: "name", controller: nameController,),
            TextFelidWidget(hintText: 'Enter your phone', labelText: "email", controller: emailController,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                 
                  },
                  child: Text('Clear Name'),
                ),
                ElevatedButton(
                  onPressed: () {
                   
                  },
                  child: Text('Clear Email'),
                ),
              ],
            ),
         ElevatedButton(
  onPressed: () {
    
      BlocProvider.of<UserBloc>(context).add(
        UsrEvent(
          name: nameController.text,
          email: emailController.text,
        ),
      );
 
  },
  child: Text('Add to List'),
),
             BlocBuilder<UserBloc, UserState>(

          builder: (context, state) {
            if (state is Add) {
              return Center(
                  child: ListView.builder(
  
                itemCount: UserData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(UserData[index]['name'] ?? ''),
                    subtitle: Text(UserData[index]['email'] ?? ''),
                  );
                },
              ),);
            } else {
              return const Text("no add");
            }
          },
        ),
            ElevatedButton(
              onPressed: () {
            ;
              },
              child: Text('Clear List'),
            ),
          ],
        ),
      ),
    );
  }
}
 