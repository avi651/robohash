import 'package:flutter/material.dart';
import 'package:robohash/src/models/robot_model.dart';
import '../widgets/rb_gridview_widget.dart';

class RBHomeComponents extends StatelessWidget {
  final List<RobotModel>?  rbModel;
  const RBHomeComponents({super.key, required this.rbModel});
  @override
  Widget build(BuildContext context) {
    return RBGridViewWidget(rbModel: rbModel);
  }
}