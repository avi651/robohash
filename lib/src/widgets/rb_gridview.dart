import 'package:flutter/material.dart';
import 'package:robohash/src/widgets/rb_display_grid_view.dart';
import '../models/robot_model.dart';
import 'rb_search_bar.dart';

class RBGridViewWidget extends StatefulWidget {
  final List<RobotModel>? rbModel;
  String searchTxt = "";
  final List<RobotModel> filterRBModel = [];
  RBGridViewWidget({Key? key, this.rbModel}) : super(key: key);

  @override
  State<RBGridViewWidget> createState() => _RBGridViewWidgetState();
}

class _RBGridViewWidgetState extends State<RBGridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: RBSearchBar(
            hintText: 'Search Robotos...',
            onChanged: (searchRobotos) {
              setState(() {
                widget.searchTxt = searchRobotos;
                _searchRobotos(searchRobotos);
              });
            },
          ),
        ),
        Expanded(
          child: RBDisplayGridView(
            rbModel: widget.rbModel,
            searchTxt: widget.searchTxt,
            filterRBModel: widget.filterRBModel,
          ),
        ),
      ],
    );
  }

  void _searchRobotos(String searchRobots) async {
    widget.filterRBModel.clear();
    for (final item in widget.rbModel!) {
      if (item.name!.toLowerCase().startsWith(searchRobots.toLowerCase())) {
        widget.filterRBModel.add(item);
      }
    }
  }
}
