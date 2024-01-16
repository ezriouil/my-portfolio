import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/responsive/responsive.dart';

class CustomIconWithButton extends Responsive {
  final String? text, image;
  final Color backgroundColor, textColor, iconColor;
  final IconData? icon;
  final GestureTapCallback onClick;

  const CustomIconWithButton(
      {super.key, required this.text, this.image,
      required this.backgroundColor,
      this.icon,
      required this.textColor,
        required this.onClick,
      required this.iconColor});

  @override
  Widget execute(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(spaceBetweenItems(context) / 2)),
      padding: EdgeInsets.symmetric(horizontal: spaceBetweenItems(context) / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon == null
              ? Image.asset(image!, width: 20, height: 20)
              : Icon(icon, size: 20, color: iconColor),
          SizedBox(width: spaceBetweenItems(context) / 4),
          ElevatedButton(
              onPressed:onClick,
              style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.TRANSPARENT,
                  elevation: 0,
                  side: BorderSide.none,
                  padding: const EdgeInsets.symmetric(vertical: 12.0)),
              child: Text(text!,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: textColor,
                      )))
        ],
      ),
    );
  }
}
