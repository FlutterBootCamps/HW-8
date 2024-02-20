import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hw_8/home_screen/data/data.dart';
import 'package:hw_8/model/person_model.dart';
import 'package:meta/meta.dart';

part 'listchanges_event.dart';
part 'listchanges_state.dart';

class ListchangesBloc extends Bloc<ListchangesEvent, ListchangesState> {
  ListchangesBloc() : super(ListchangesInitial()) {
    on<ListchangesEvent>((event, emit) {
      // TODO: implement event handler
    });
    // Stream<TextEditingController> mapEventToState(
    //     ListchangesEvent event) async* {
    //   if (event is ClearNameEvent) {
    //     state.clear();
    //   yield state;
    //   }
    // }

    on<RemoveListEvent>((event, emit) {
      print("entring rm");
      emit(RemoveListState());
    });

    on<SubmitEvent>((event, emit) {
      print("entring sup");
      emit(SubmitState(name: event.name, email: event.email));
    });
  }
}
