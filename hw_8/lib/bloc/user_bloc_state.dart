part of 'user_bloc_bloc.dart';

@immutable

abstract class UserBlocState {}

class UserBlocInitial extends UserBlocState {}

class SuccessState extends UserBlocState {
  final String name;
  final String email;
  SuccessState({required this.name , required this.email});
}

class ErrorState extends UserBlocState {}