import 'dart:developer';
import 'package:flutter/foundation.dart';
import '../exceptions/custom_error.dart';
import '../exceptions/data_exceptions.dart';
import '../models/robot_model.dart';
import '../services/rb_services.dart';

class RBRepository {
  final RBApiServices? rbApiServices;

  RBRepository({
    required this.rbApiServices,
  });

  Future<List<RobotModel>>? fetchRobotData() async {
    try {
      final List<RobotModel>? robotModel = await rbApiServices!.getRBApiServices();
      if (kDebugMode) {
        log('RobotServices: ${robotModel}');
      }
      return robotModel!;
    } on DataExceptions catch (e) {
      throw CustomError(errMsg: e.message);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }
}