import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_info_event.dart';
part 'user_info_state.dart';

class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  UserInfoBloc() : super(UserInfoInitial()) {
    on<UserInfoEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<PersonInfoEvent>((event, emit){
      emit(AddState(userName: event.userNameEvent, email: event.emailEvent));
    });


  }
}
