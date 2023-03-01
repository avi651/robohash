import '../constants/host_constants.dart';
import '../exceptions/data_exceptions.dart';
import '../exceptions/http_error_handler.dart';
import '../models/robot_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';

class RBApiServices {
  Future<List<RobotModel>?> getRBApiServices() async {
    const url = kHostApi + kPath;
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        log(response.body);
        final responseBody = json.decode(response.body) as List<dynamic>;
        if (responseBody.isEmpty) {
          throw DataExceptions('Cannot get the data');
        }
        return responseBody.map((e) => RobotModel.fromJson(e)).toList();
      }
    } catch (e) {
      rethrow;
    }
    return null;
  }
}