import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_8/helper/colors.dart';
import 'package:hw_8/helper/extintion.dart';
import 'package:hw_8/home_screen/data/data.dart';
import 'package:hw_8/home_screen/widgets/information_card.dart';
import 'package:flutter/material.dart';

class PersonContainer extends StatelessWidget {
  const PersonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight() / 1.4,
      width: context.getWidth() * 2,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: litePink,
      ),
      child: ListView.builder(
          itemCount: GetIt.I.get<PersonsData>().personData.length,
          itemBuilder: (BuildContext context, int index) {
            return PersonCard(
                person: GetIt.I.get<PersonsData>().personData[index]);
          }),
    );
  }
}
