import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hw_6/main.dart';
import 'package:hw_6/model/model.dart';
part 'person_information_event.dart';
part 'person_information_state.dart';

class PersonInformationBloc extends Bloc<PersonInformationEvent, PersonInformationState> {
  PersonInformationBloc() : super(PersonInformationInitial()) {
    on<PersonInformationEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<AddToPersonInformationListEvent>((event, emit) {
      print(event.name);
          list.add(ContactInfo(name: event.name.toString(), email: event.email.toString()));

      emit(ChangeList(contactInfo: ContactInfo(name:event.name,email:event.email,)));

      // TODO: implement event handler
    });

    on<ClearPersonInformationListEvent>((event, emit) {
      list.clear();
      emit(Clear(list: list));
      // TODO: implement event handler
    });
  }
}
