import 'dart:developer';
import 'package:bloc/bloc.dart';
import '../../bloc/rb_cubit/rb_state.dart';
import '../../exceptions/custom_error.dart';
import '../../repository/rb_repository.dart';

class RBCubit extends Cubit<RBState> {
   final RBRepository rbRepository;

   RBCubit({required this.rbRepository})
       : super(const RBState.initial());

   Future<void> fetchRBData() async {
     emit(const RBStateLoading());
     try {
       await rbRepository.fetchRobotData()!.then((rbData) {
         emit(RBStateSuccess(rbData));
       });
     } on CustomError catch (e) {
       emit(RBState.error(e.toString()));
     }
     log(state.toString());
   }
}