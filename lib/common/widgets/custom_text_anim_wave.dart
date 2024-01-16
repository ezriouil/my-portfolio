import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';

class CustomTextAnimWave extends Responsive {
  final String title, subTitle;

  const CustomTextAnimWave(
      {super.key, required this.title, required this.subTitle});

  @override
  Widget execute(BuildContext context) {
    return Column(
      children: [
        TextLiquidFill(
          text: title,
          loadDuration: const Duration(seconds: 10),
          waveColor: CustomColors.WHITE,
          textStyle: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontSize: 80, color: CustomColors.WHITE),
          boxBackgroundColor: primaryColor(context),
          boxHeight: 120,
        ),
        Text(subTitle,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 20, color: CustomColors.WHITE ,fontFamily: "Vip"))
      ],
    );
  }
}
