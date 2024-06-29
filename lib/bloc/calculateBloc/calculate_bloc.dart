import 'package:advanceflutter/bloc/calculateBloc/bloc_state.dart';
import 'package:advanceflutter/bloc/calculateBloc/calculate_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculateBloc extends Bloc<CalculateEvent, CalculateState> {
  CalculateBloc() :super(InitState()){
    on<AddEvent>((event, emit) {
      int res=event.first+event.second;

    });
  }
}