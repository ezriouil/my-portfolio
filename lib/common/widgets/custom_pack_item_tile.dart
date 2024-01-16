import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/constants/custom_sizes.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CustomPackItemTile extends Responsive {
  final String title;
  final Color? colorIcon, colorTitle, bgColor;
  final double? iconSize;
  final IconData? icon;

  const CustomPackItemTile({super.key, required this.title, this.colorIcon, this.colorTitle,this.bgColor, this.iconSize, this.icon});

  @override
  Widget execute(BuildContext context) {
    return ListTile(
        leading: Icon(icon ?? Icons.done_all_outlined,
            size: iconSize ?? 20, color: colorIcon ?? primaryColor(context)),
        contentPadding: const EdgeInsets.only(left: CustomSizes.SPACE_BETWEEN_ITEMS / 2),
        dense: true,
        minVerticalPadding: 0,
        selected: true,
        selectedTileColor: bgColor ?? CustomColors.TRANSPARENT,
        visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
        title: Text(title,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: colorTitle ?? darkLightColor(context),fontFamily: "Cal")));
  }
}
