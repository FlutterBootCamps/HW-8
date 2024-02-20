part of 'c_bloc.dart';

@immutable
sealed class CState {}

final class CInitial extends CState {}
final class MargInfoState extends CState{
  final String Mresult;
  MargInfoState({required this.Mresult,});
}
final class ErrorState extends CState{}
