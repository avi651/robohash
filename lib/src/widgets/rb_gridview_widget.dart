import 'package:flutter/material.dart';
import '../models/robot_model.dart';
import 'grid_view_item.dart';

class RBGridViewWidget extends StatelessWidget {
  final List<RobotModel>?  rbModel;
  const RBGridViewWidget({super.key, this.rbModel});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      physics: const BouncingScrollPhysics(),
      itemCount: rbModel?.length ?? 0,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: (width * .3) / (height * .1),
      ),
      itemBuilder: (BuildContext context, int index) {
        return GridViewItem(
          info: rbModel![index].name,
          itemHeight: height * .1,
          itemWidth: width * .3,
        );
      },
     );
  }
}