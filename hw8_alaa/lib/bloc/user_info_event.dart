part of 'user_info_bloc.dart';


class UserInfoEvent {}

class PersonInfoEvent extends UserInfoEvent {
  final String  userNameEvent;
  final String  emailEvent;
  PersonInfoEvent({required this.userNameEvent, required this.emailEvent});
}

class ClearListEvent extends UserInfoEvent{}