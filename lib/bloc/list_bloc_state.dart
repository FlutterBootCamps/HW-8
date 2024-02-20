part of 'list_bloc_bloc.dart';

@immutable
sealed class ListBlocState {}

final class ListBlocInitial extends ListBlocState {}

final class SuccessState extends ListBlocState {
  final List<Person> persons;
  SuccessState({required this.persons});
}

final class ErrorState extends ListBlocState {}
