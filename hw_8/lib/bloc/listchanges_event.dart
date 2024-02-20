part of 'listchanges_bloc.dart';

@immutable
sealed class ListchangesEvent {}

class ClearEmailEvent extends ListchangesEvent {}

class ClearNameEvent extends ListchangesEvent {}

class RemoveListEvent extends ListchangesEvent {}

class SubmitEvent extends ListchangesEvent {
  final String name;
  final String email;
  SubmitEvent({ required this.name,  required this.email});
}
