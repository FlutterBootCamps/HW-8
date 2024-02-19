import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:meta/meta.dart';
import 'package:my_contact_list/models/contact_model.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc() : super(ListInitial()) {
    on<ListEvent>((event, emit) {});

    on<AddEvent>((event, emit) {
      if (event.name.trim() == "" || event.email.trim() == "") {
        emit(ErrorState(
            message: "Please enter valid input, empty fields not allowed!"));
      } else if (!EmailValidator.validate(event.email)) {
        emit(ErrorState(message: "Email not valid, please change email."));
      } else {
        emit(AddState(contact: Contact(name: event.name, email: event.email)));
      }
    });

    on<ClearEvent>((event, emit) {
      if (event.list.isEmpty) {
        emit(ErrorState(message: "List is already clear!"));
      } else {
        emit(ClearState());
      }
      
    });
  }
}

