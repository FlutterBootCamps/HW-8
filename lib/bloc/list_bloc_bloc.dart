import 'package:assingment_bloc/models/person.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'list_bloc_event.dart';
part 'list_bloc_state.dart';

class ListBlocBloc extends Bloc<ListBlocEvent, ListBlocState> {
  List<Person> persons = [];

  ListBlocBloc() : super(ListBlocInitial()) {
    on<ListBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<AddListEvent>((event, emit) {
      persons.add(event.person);
      emit(SuccessState(persons: persons));
    });
    on<ClearListEvent>((event, emit) {
      persons.clear();
      emit(SuccessState(persons: persons));
    });
  }
}
