part of 'text_field_logic_bloc.dart';

sealed class TextFieldLogicEvent {}

final class AddItemToList extends TextFieldLogicEvent {
  String name;
  String email;
  int? add;
  AddItemToList({required this.name, required this.email, this.add});
}

final class ClearTextField extends TextFieldLogicEvent {
  String label;
  ClearTextField({required this.label});
}

final class ClearAllItem extends TextFieldLogicEvent {}
