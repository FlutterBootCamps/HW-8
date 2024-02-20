part of 'user_info_bloc.dart';

@immutable
sealed class UserInfoState {}

final class UserInfoInitial extends UserInfoState {}

final class AddState extends UserInfoState {
  final String  userName;
  final String email;

  AddState({required this.userName, required this.email});

}
final class ClearListState extends UserInfoState {}
final class ErrorState extends UserInfoState {}
