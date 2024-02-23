part of 'user_bloc.dart';

@immutable
sealed class UserState {}


final class UserInitial extends UserState {}

// State class indicating that the name has been cleared.
class ClearStateName extends UserState {
  final String name;

  
  ClearStateName({required this.name});
}

// State class indicating that the email has been cleared.
class ClearStateEmail extends UserState {
  final String email;


  ClearStateEmail({required this.email});
}

// State class indicating that a user has been added to the list.
class AddState extends UserState {
  final List<UserInfo> listUser;


  AddState({required this.listUser});
}

// State class indicating that the user list has been cleared.
class ClearState extends UserState {
  final List<UserInfo> listUser;

 
  ClearState({required this.listUser});
}

// State class indicating an error state.
class ErrorState extends UserState {}