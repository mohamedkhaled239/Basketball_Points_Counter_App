import 'package:basketballpointscounterapp/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterAIncrementState());

  int teamACounter = 0;

  int teamBCounter = 0;



  void teamAIncreament({required int buttonNumber}){
    
    teamACounter+=buttonNumber;
      emit(CounterAIncrementState());
  }
  void teamBIncreament({required int buttonNumber}){
       teamBCounter+=buttonNumber;
      emit(CounterBIncrementState());

  }
}