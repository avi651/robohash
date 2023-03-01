import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  final double? itemWidth;
  final double? itemHeight;
  final String? info;
  const GridViewItem({Key? key,
    required this.itemHeight,
    required this.itemWidth,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: itemWidth,
      height: itemHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.red
      ),
      child: Center(
        child: Text(
          info ?? "",
        ),
      ),
    );
  }
}