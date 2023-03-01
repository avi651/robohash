import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/robot_model.dart';
part 'rb_state.freezed.dart';

@freezed
class RBState with _$RBState {
  const factory RBState.initial() = RBStateInitial;
  const factory RBState.loading() = RBStateLoading;
  const factory RBState.success(List<RobotModel> rbModel) = RBStateSuccess;
  const factory RBState.error(String message) = RBStateError;
}