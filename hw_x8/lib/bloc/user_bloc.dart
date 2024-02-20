import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hw_x8/model/user.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  List<UserInfo> listUser = [];

 
  UserBloc() : super(UserInitial()) {
    on<UserEvent>((event, emit) {
      // TODO: implement event handler
    });

    // Handler for ClearEventName, clearing the name field and emitting ClearStateName.
    on<ClearEventName>(
      (event, emit) {
        if (event.name.isNotEmpty) {
          emit(ClearStateName(name: ""));
          event.controller1.text = "";
        }
      },
    );

    // Handler for ClearEventEmail, clearing the email field and emitting ClearStateEmail.
    on<ClearEventEmail>(
      (event, emit) {
        if (event.email.isNotEmpty) {
          emit(ClearStateEmail(email: ""));
          event.controller2.text = "";
        }
      },
    );

    // Handler for AddEvent, adding a user to the list and emitting AddState.
    on<AddEvent>(
      (event, emit) {
        if (event.name.isNotEmpty && event.email.isNotEmpty) {
          UserInfo user = UserInfo(name: event.name, email: event.email);
          listUser.add(user);
          emit(AddState(listUser: List.from(listUser)));
        }
      },
    );

    // Handler for ClearEvent, removing a user from the list and emitting ClearState.
    on<ClearEvent>(
      (event, emit) {
        if (event.name.isNotEmpty && event.email.isNotEmpty) {
          listUser.removeWhere((user) =>
              user.name == event.name && user.email == event.email);
          emit(ClearState(listUser: List.from(listUser)));
        }
      },
    );
  }
}