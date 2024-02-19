part of 'list_bloc.dart';

@immutable
sealed class ListState {}

final class ListInitial extends ListState {
}

final class AddState extends ListState {
  final Contact contact;
  AddState({required this.contact});
}

final class ClearState extends ListState {}

final class ErrorState extends ListState {
  final String message;

  ErrorState({required this.message});
}