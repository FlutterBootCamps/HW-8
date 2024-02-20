import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_8/bloc/text_field_logic_bloc.dart';
import 'package:hw_8/extension/screen_handler.dart';
import 'package:hw_8/widgets/item_container.dart';

class LowerField extends StatelessWidget {
  const LowerField({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: context.getWidth() * 0.80,
        height: context.getHeight(),
        child: Center(
          child: BlocBuilder<TextFieldLogicBloc, TextFieldLogicState>(
            builder: (context, state) {
              if (state is SuccessState) {
                return ListView.builder(
                  itemCount: state.count ?? 0,
                  itemBuilder: (context, index) {
                    return ItemContainer(
                      name: state.text ?? 'No name',
                      email: state.email ?? 'No email',
                    );
                  },
                );
              } else if (state is ErrorState) {
                return Text('Error');
              }
              return ListView.builder(
                itemCount: 0,
                itemBuilder: (context, index) {
                  return ItemContainer(
                    name: 'name',
                    email: 'email',
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
