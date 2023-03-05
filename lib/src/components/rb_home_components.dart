import 'package:flutter/material.dart';
import '../models/robot_model.dart';
import '../widgets/rb_gridview.dart';

class RBHomeComponents extends StatelessWidget {
  final List<RobotModel>?  rbModel;
  const RBHomeComponents({super.key, required this.rbModel});
  @override
  Widget build(BuildContext context) {
    return RBGridViewWidget(rbModel: rbModel);
  }
}