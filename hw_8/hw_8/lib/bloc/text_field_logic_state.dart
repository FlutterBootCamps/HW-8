part of 'text_field_logic_bloc.dart';

sealed class TextFieldLogicState {}

final class TextFieldLogicInitial extends TextFieldLogicState {}

final class SuccessState extends TextFieldLogicState {
  String? text;
  String? textField;
  String? email;
  int? count;
  SuccessState(
      {this.text, this.email, this.count, this.textField});
}

final class ErrorState extends TextFieldLogicState {}
