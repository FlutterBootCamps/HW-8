import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hm8/bloc/c_bloc.dart';

class LowerPart extends StatelessWidget {
  final List<Map<String, String>> userDataList;

  LowerPart(this.userDataList);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CBloc, CState>(
      builder: (context, state) {
        if(state is MargInfoState ){
          return SizedBox(
            height: 200,
            width: 200,
            child: ListView.builder(
              itemCount: userDataList.length,
              itemBuilder: (context, index) {
                final userData = userDataList[index];
                return ListTile(
                  title: Text(
                      'Name: ${userData['name']}, Email: ${userData['email']}'),
                );
              },
            ),
          );
        }else{
          return const Text("no result");
        }
      },
    );
  }
}
