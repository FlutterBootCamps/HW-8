part of 'user_bloc.dart';

@immutable
sealed class UserEvent {}

class ClearEventName extends UserEvent {
  String name;
  final TextEditingController controller1;

  ClearEventName({required this.controller1, required this.name});
}

class ClearEventEmail extends UserEvent {
  String email;
  final TextEditingController controller2;

  ClearEventEmail({required this.email, required this.controller2});
}

class AddEvent extends UserEvent {
  final String name;
  final String email;


  AddEvent({required this.name, required this.email});
}

class ClearEvent extends UserEvent {
  final String name;
  final String email;
  


  ClearEvent({required this.name, required this.email});
}

