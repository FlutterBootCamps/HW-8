part of 'listchanges_bloc.dart';

@immutable
sealed class ListchangesState {}

final class ListchangesInitial extends ListchangesState {}

final class ClearEmailState extends ListchangesState {}

final class ClearNameState extends ListchangesState {}

final class SubmitState extends ListchangesState {
  final String name;
  final String email;
  SubmitState({required this.name, required this.email}) {
    var person = Persons(name: name, email: email);
    GetIt.I.get<PersonsData>().addData(person: person);
  }
}

final class RemoveListState extends ListchangesState {
  RemoveListState() {
    GetIt.I.get<PersonsData>().deleteData();
  }
}

final class ErrorState extends ListchangesState {}
