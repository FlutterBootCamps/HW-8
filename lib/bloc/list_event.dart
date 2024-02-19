part of 'list_bloc.dart';

@immutable
sealed class ListEvent {}

final class AddEvent extends ListEvent{
  final String name;
  final String email;
  AddEvent({required this.name, required this.email});
}

final class ClearEvent extends ListEvent{
  List<Contact> list;

  ClearEvent({required this.list});
}