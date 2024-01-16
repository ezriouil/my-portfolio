import 'package:portfolio/utils/constants/custom_sizes.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CustomProjectCover extends Responsive {
  final GestureTapCallback onClick;
  final Function(bool, String) onHover;
  final String image;
  final Widget child;

  const CustomProjectCover(
      {super.key,
      required this.onClick,
      required this.onHover,
      required this.image,
      required this.child});

  @override
  Widget execute(BuildContext context) {
    return InkWell(
      onTap:onClick,
      onHover: (hover)=>onHover(hover, image),
      borderRadius: BorderRadius.circular(CustomSizes.SPACE_BETWEEN_ITEMS),
      child: Stack(fit: StackFit.expand, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(CustomSizes.SPACE_BETWEEN_ITEMS),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        child
      ]),
    );
  }
}
