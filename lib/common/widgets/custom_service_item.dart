import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/constants/custom_sizes.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CustomServiceItem extends Responsive {
  final String imgUrl, header, title;

  const CustomServiceItem({super.key, required this.imgUrl, required this.header,required this.title});

  @override
  Widget execute(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
          border: Border.all(color: grayColor(context)),
          borderRadius: BorderRadius.circular(
              CustomSizes.SPACE_DEFAULT + 2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(
                          CustomSizes.SPACE_DEFAULT),
                      topRight: Radius.circular(
                          CustomSizes.SPACE_DEFAULT)),
                  child: Image.asset(
                    imgUrl,
                    height: getWidth(context) * 0.2,
                    width: getWidth(context),
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  left: CustomSizes.SPACE_BETWEEN_ITEMS,
                  top: CustomSizes.SPACE_BETWEEN_ITEMS,
                  child: Container(
                    decoration: BoxDecoration(
                        color: grayColor(context).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(
                            CustomSizes.SPACE_BETWEEN_SECTIONS *
                                4)),
                    padding: const EdgeInsets.symmetric(vertical: CustomSizes.SPACE_BETWEEN_ITEMS / 2, horizontal: CustomSizes.SPACE_BETWEEN_ITEMS),
                    child: Text(header,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: CustomColors.WHITE)),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: CustomSizes.SPACE_DEFAULT,
                vertical: CustomSizes.SPACE_BETWEEN_ITEMS),
            child: Text(
                title,
                style:
                Theme.of(context).textTheme.headlineMedium),
          )
        ],
      ),
    );
  }
}