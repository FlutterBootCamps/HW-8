part of 'user_bloc.dart';

@immutable
sealed class UserState {}

final class UserInitial extends UserState {}
final class Add extends UserState {
  final double added;
  Add({required this.added});
}
final class Userbloc extends UserState {}