import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:portfolio/utils/constants/custom_sizes.dart';

class CustomIconWithButton extends Responsive {
  final String? text, image;
  final Color backgroundColor, textColor, iconColor;
  final IconData? icon;
  final GestureTapCallback onTap;

  const CustomIconWithButton(
      {super.key,
      required this.text,
      this.image,
      required this.backgroundColor,
      this.icon,
      required this.textColor,
      required this.onTap,
      required this.iconColor});

  @override
  Widget execute(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius:
            BorderRadius.circular(CustomSizes.WEB_SPACE_BETWEEN_ITEMS)),
        padding: EdgeInsets.symmetric(
            horizontal: CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2,
            vertical: CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == null
                ? Image.asset(image!, width: 20, height: 20)
                : Icon(icon, size: 20, color: iconColor),
            SizedBox(width: CustomSizes.WEB_SPACE_BETWEEN_ITEMS / 2),
            ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColors.TRANSPARENT,
                    elevation: 0,
                    shadowColor: CustomColors.TRANSPARENT,
                    side: BorderSide.none,
                    padding: const EdgeInsets.symmetric(vertical: 12.0)),
                child: Text(text!,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: textColor,
                    )))
          ],
        ),
      ),
    );
  }
}
