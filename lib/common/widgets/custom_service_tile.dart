import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/constants/custom_sizes.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CustomServiceTile extends Responsive {
  final String image, title, description;

  const CustomServiceTile(
      {super.key, required this.image, required this.title, required this.description});

  @override
  Widget execute(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
          CustomSizes.SPACE_BETWEEN_ITEMS),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: CustomColors.GREY_DARK),
          borderRadius: BorderRadius.circular(
              CustomSizes.SPACE_BETWEEN_ITEMS/2)),
      child: Column(
        children: [
          Image.asset(image,
              height: 70, width: 70),
          const SizedBox(
              height: CustomSizes.SPACE_BETWEEN_ITEMS),
          Text(title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium, textAlign: TextAlign.center),
          const SizedBox(
              height: CustomSizes.SPACE_BETWEEN_ITEMS),
          ReadMoreText(
            description,
            trimLines: 4,
            trimMode: TrimMode.Line,
            trimExpandedText: " show less",
            trimCollapsedText: " read more",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: isDark(context)
                    ? CustomColors.WHITE.withOpacity(0.7)
                    : CustomColors.BLACK.withOpacity(0.7)),
            moreStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: primaryColor(context)),
            lessStyle: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: primaryColor(context)),
          ),
        ],
      ),
    );
  }
}
