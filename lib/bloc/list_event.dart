part of 'list_bloc.dart';

@immutable
abstract class ListEvent {}

class LoadListEvent extends ListEvent {}

class AddItemEvent extends ListEvent {
   final String name;
  final String email;
  
  AddItemEvent(this.name, this.email);
}

class ClearListEvent extends ListEvent {}
