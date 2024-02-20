import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'c_event.dart';
part 'c_state.dart';

class CBloc extends Bloc<CEvent, CState> {
  CBloc() : super(CInitial()) {
    on<CEvent>((event, emit) {
      // TODO: implement event handler
    });
     on<MargInfo>((event, emit) {
      emit(MargInfoState(Mresult: event.textController1+event.textController2));
    });
  }
}
