part of 'list_bloc.dart';


@immutable
abstract class ListState {}

class ListInitial extends ListState {}

class LoadingState extends ListState {}

class SuccessState extends ListState {
  final List<String> items;

  SuccessState(this.items);
}

class ErrorState extends ListState {
  final String error;

  ErrorState(this.error);
}
