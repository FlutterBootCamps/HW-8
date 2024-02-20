import 'package:bloc/bloc.dart';

part 'text_field_logic_event.dart';
part 'text_field_logic_state.dart';

class TextFieldLogicBloc
    extends Bloc<TextFieldLogicEvent, TextFieldLogicState> {
  int count = 1;
  TextFieldLogicBloc() : super(TextFieldLogicInitial()) {
    on<TextFieldLogicEvent>((event, emit) {});

    on<AddItemToList>((event, emit) {
      emit(SuccessState(
        text: event.name,
        email: event.email,
        count: count++,
      ));
    });

    on<ClearAllItem>((event, emit) {
      emit(SuccessState(count: 0));
    });

    on<ClearTextField>((event, emit) {
      emit(SuccessState(textField: ''));
    });
  }
}
