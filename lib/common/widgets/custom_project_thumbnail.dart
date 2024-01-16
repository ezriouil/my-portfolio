import 'package:portfolio/utils/constants/custom_sizes.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CustomProjectThumbnail extends Responsive {
  final String image1, image2, image3;

  const CustomProjectThumbnail(
      {super.key, required this.image1, required this.image2, required this.image3});

  @override
  Widget execute(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: ClipRRect(
              borderRadius:
              BorderRadius.circular(CustomSizes.SPACE_DEFAULT),
              child: Image.asset(image1,
                  fit: BoxFit.cover,
                  height: 400,
                  width: 100),
            )),
        const SizedBox(width: CustomSizes.SPACE_BETWEEN_ITEMS),
        Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  CustomSizes.SPACE_DEFAULT),
              child: Image.asset(image2,
                  fit: BoxFit.cover,
                  height: 400,
                  width: 100),
            )),
        const SizedBox(width: CustomSizes.SPACE_BETWEEN_ITEMS),
        Expanded(
            child: ClipRRect(
              borderRadius:
              BorderRadius.circular(CustomSizes.SPACE_DEFAULT),
              child: Image.asset(image3,
                  fit: BoxFit.cover,
                  height: 400,
                  width: 100),
            )),
      ],
    );
  }
}