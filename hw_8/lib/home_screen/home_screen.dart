import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw_8/bloc/listchanges_bloc.dart';
import 'package:hw_8/helper/extintion.dart';
import 'package:hw_8/home_screen/data/data.dart';
import 'package:hw_8/home_screen/widgets/button_widget.dart';
import 'package:hw_8/home_screen/widgets/info_container.dart';
import 'package:hw_8/home_screen/widgets/textfield_widget.dart';
import 'package:hw_8/model/person_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  late Persons person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "people data",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 143, 86, 152)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: context.getHeight() / 4.5,
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Textfield(
                          hintText: "enter your name",
                          textController: nameController,
                        ),
                        ButtonWidget(
                          title: 'clear name',
                          onPress: () {
                            // context
                            //     .read<ListchangesBloc>()
                            //     .add(ClearNameEvent());
                            nameController.clear();
                          },
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Textfield(
                          hintText: "enter your email",
                          textController: emailController,
                        ),
                        ButtonWidget(
                          title: 'clear email',
                          onPress: () {
                            emailController.clear();
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonWidget(
                          title: 'Submit',
                          onPress: () {
                            if (_formKey.currentState!.validate()) {
                              BlocProvider.of<ListchangesBloc>(context).add(
                                  SubmitEvent(
                                      name: nameController.text,
                                      email: emailController.text));
                            }
                          },
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        ButtonWidget(
                          title: 'remove list',
                          onPress: () {
                            BlocProvider.of<ListchangesBloc>(context)
                                .add(RemoveListEvent());
                          },
                        )
                      ],
                    )
                  ],
                )),
          ),
          BlocBuilder<ListchangesBloc, ListchangesState>(
              builder: (context, state) {
            if (state is RemoveListState) {
              print(
                  "in remove ${GetIt.I.get<PersonsData>().personData.length}");
              return const PersonContainer();
            } else if (state is SubmitState) {
              print(
                  "in submit ${GetIt.I.get<PersonsData>().personData.length}");
              return const PersonContainer();
            } else {
              print("in else ${GetIt.I.get<PersonsData>().personData.length}");
              return Text(
                "no data yet",
                style: GoogleFonts.philosopher(
                    fontSize: 25, fontWeight: FontWeight.w600),
              );
            }
          })
        ],
      ),
    );
  }
}
