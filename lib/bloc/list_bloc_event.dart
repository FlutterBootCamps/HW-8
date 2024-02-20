part of 'list_bloc_bloc.dart';

@immutable
sealed class ListBlocEvent {}

// when add to list
final class AddListEvent extends ListBlocEvent {
  final Person person;
  AddListEvent({required this.person});
}

// when clear the list
final class ClearListEvent extends ListBlocEvent {}
