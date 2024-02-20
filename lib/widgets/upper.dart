import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hm8/bloc/c_bloc.dart';
import 'package:hm8/widgets/lower.dart';

class UpperPart extends StatelessWidget {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final List<Map<String, String>> userDataList;

  UpperPart({Key? key, required this.userDataList,}) : super(key: key);

  void clearName() {
    textController1.clear();
  }

  void clearEmail() {
    textController2.clear();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('HW-8')),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textController1,
                    decoration: InputDecoration(labelText: 'Enter Your Name',hintText: "name"),
                  ),
                ),
                ElevatedButton(
                  onPressed: clearName,
                  child: Text('Clear'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textController2,
                    decoration: InputDecoration(labelText: 'Enter Your Email',hintText: "Email"),
                  ),
                ),
                ElevatedButton(
                  onPressed: clearEmail,
                  child: Text('Clear'),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(30)),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CBloc>(context).add(
                    MargInfo(textController1: textController1.text,textController2: textController2.text
                    ),
                  );
                },
                child: Text('Add'),
              ),
            ),
            LowerPart(userDataList),
          ],
        ),
      ),
    );
  }
}
