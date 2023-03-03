import 'package:flutter/material.dart';
import '../constants/host_constants.dart';
import '../models/robot_model.dart';
import 'rb_grid_view_item.dart';

class RBDisplayGridView extends StatefulWidget {
  final List<RobotModel>? rbModel;
  String searchTxt = "";
  final List<RobotModel>? filterRBModel;
  RBDisplayGridView({
    super.key,
    required this.rbModel,
    required this.searchTxt,
    required this.filterRBModel,
  });

  @override
  State<RBDisplayGridView> createState() => _RBDisplayGridViewState();
}

class _RBDisplayGridViewState extends State<RBDisplayGridView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      physics: const BouncingScrollPhysics(),
      itemCount: widget.searchTxt.isEmpty
          ? widget.rbModel?.length ?? 0
          : widget.filterRBModel?.length ?? 0,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: (width * .13) / (height * .1),
      ),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            setState(() {
              if (widget.searchTxt.isEmpty
                  ? widget.rbModel![index].isFav == false
                  : widget.filterRBModel![index].isFav == false) {
                widget.searchTxt.isEmpty
                    ? widget.rbModel![index].isFav = true
                    : widget.filterRBModel![index].isFav = true;
              } else {
                widget.searchTxt.isEmpty
                    ? widget.rbModel![index].isFav = false
                    : widget.filterRBModel![index].isFav = false;
              }
            });
          },
          child: GridViewItem(
            name: widget.searchTxt.isEmpty
                ? widget.rbModel![index].name
                : widget.filterRBModel![index].name,
            email: widget.searchTxt.isEmpty
                ? widget.rbModel![index].email
                : widget.filterRBModel![index].email,
            image:
                '$imgPathConst${widget.searchTxt.isEmpty ? widget.rbModel![index].id : widget.filterRBModel![index].email}$imgUrlSize',
            itemHeight: height * .1,
            itemWidth: width * .3,
            isFav: widget.searchTxt.isEmpty
                ? widget.rbModel![index].isFav
                : widget.filterRBModel![index].isFav,
          ),
        );
      },
    );
  }
}
