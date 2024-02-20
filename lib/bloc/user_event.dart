part of 'user_bloc.dart';

@immutable
sealed class UserEvent {
  get name => null;

  get email => null;
}
class UsrEvent extends UserEvent {
  final String name;
  final String email;
  UsrEvent({required this.name, required this.email});
}