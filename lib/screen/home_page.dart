import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/list_bloc.dart';

import '../helper/button_bar_widget.dart';
import '../helper/input.dart';
import '../helper/list.dart';



 final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  List<String> _items = [];

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
   
  }


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIST'),
      ),
      body: BlocBuilder<ListBloc, ListState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SuccessState) {
            return Column(
              children: <Widget>[
                //Upper 
          InputFieldWithClear(
            label: 'Name',
            controller: _nameController,
            clearFunction: () => (_nameController),
          ),
          InputFieldWithClear(
            label: 'Email',
            controller: _emailController,
            clearFunction: () => (_emailController),
          ),
                const SizedBox(height: 59),
                ButtonBarWidget(
                 onAdd: () {
    // Dispatch AddItemEvent with name and email when the 'Add' button is pressed
    BlocProvider.of<ListBloc>(context).add(AddItemEvent(
      _nameController.text,
      _emailController.text,
    ));
  },
                  onClearList: () {
                    BlocProvider.of<ListBloc>(context).add(ClearListEvent());
                  },
                ),
                Expanded(
                  child: ItemListWidget(items: state.items),
                ),
                 ItemListWidget(items: _items), 
              ],
            );
          } else if (state is ErrorState) {
            return Center(
              child: Text('Error: ${state.error}'),
            );
          } else {
            return Container();
          }
        },

        
      ),
    );
  }
}
