part of 'c_bloc.dart';

@immutable
sealed class CEvent {}

class MargInfo extends CEvent{
 final String textController1;
 final String textController2;

  MargInfo({required this.textController1, required this.textController2});
}


