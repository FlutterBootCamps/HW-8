import 'dart:js';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_6/bloc/person_information_bloc.dart';
import 'package:hw_6/main.dart';


// Define a custom widget that takes a TextEditingController as a parameter
class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final TextEditingController? controller;
  final TextEditingController? controllername;
  final TextEditingController? controlleremail;

  final int number;
  final String text;

  const CustomButton({
    Key? key,
    required this.callback,
     this.controller=null,
    required this.number,
    required this.text,
     this.controlleremail=null,
     this.controllername=null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Call the callback function
        if (number == 1) {
          // Clear the text field using the controller
          controller?.clear();
        } else if (number == 2) {
          BlocProvider.of<PersonInformationBloc>(context).add(AddToPersonInformationListEvent(name: controllername!.text.toString(), email: controlleremail!.text.toString()));
final snackBar = SnackBar(
                  /// need to set following properties for best effect of awesome_snackbar_content
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'منتاز كمل يابطل',
                    message:
                        'انت الان نجحت في ادخال البياناتكمل يا بطل',

                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                    contentType: ContentType.success,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
          controllername?.clear();
          controlleremail?.clear();
        } else {
          BlocProvider.of<PersonInformationBloc>(context).add(ClearPersonInformationListEvent(list: list));
          final snackBar = SnackBar(
                  /// need to set following properties for best effect of awesome_snackbar_content
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackbarContent(
                    title: 'شنو سويت',
                    message:
                        'أنت للمعلومية حذفت البيانات الي انت تعبت وانت تدخلهم لهذا عيد الادخال يا وحش ',

                    /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                    contentType: ContentType.failure,
                  ),
                );

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
        }
      },
      child: Text(text),
    );
  }
}
