import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CustomGridView extends Responsive {
  final Widget Function(BuildContext context, int index) itemBuilder;
  final int itemsInRow, count;
  final ScrollController? controller;
  final double? itemsHeight, spaceBetweenColumns, spaceBetweenRows;

  const CustomGridView(
      {super.key,
      required this.itemBuilder,
      this.itemsInRow = 2,
      required this.count,
        this.controller,
      this.itemsHeight,
      this.spaceBetweenColumns,
      this.spaceBetweenRows});

  @override
  Widget execute(BuildContext context) {
    return GridView.builder(
      controller: controller,
        itemCount: count,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: itemsInRow,
            mainAxisExtent: itemsHeight ?? 400,
            mainAxisSpacing: spaceBetweenColumns ??  4.0,
            crossAxisSpacing: spaceBetweenRows ?? 2.0),
        itemBuilder: itemBuilder);
  }
}
