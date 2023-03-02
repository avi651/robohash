import 'package:flutter/material.dart';

import '../constants/host_constants.dart';
import '../models/robot_model.dart';
import 'rb_grid_view_item.dart';

class RBDisplayGridView extends StatelessWidget {
  final List<RobotModel>?  rbModel;
  String searchTxt = "";
  final List<RobotModel>? filterRBModel;
  RBDisplayGridView({super.key, required this.rbModel, required this.searchTxt, required this.filterRBModel});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return  GridView.builder(
      padding: const EdgeInsets.all(16),
      physics: const BouncingScrollPhysics(),
      itemCount: searchTxt.isEmpty ? rbModel?.length ?? 0 : filterRBModel?.length ?? 0,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: (width * .13) / (height * .1),
      ),
      itemBuilder: (BuildContext context, int index) {
        return GridViewItem(
          name: searchTxt.isEmpty ? rbModel![index].name : filterRBModel![index].name,
          email: searchTxt.isEmpty ? rbModel![index].email : filterRBModel![index].email,
          image: '$imgPathConst${searchTxt.isEmpty ? rbModel![index].id : filterRBModel![index].email}$imgUrlSize',
          itemHeight: height * .1,
          itemWidth: width * .3,
        );
      },
    );
  }
}