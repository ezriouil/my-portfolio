import 'package:portfolio/common/widgets/custom_elevated_button.dart';
import 'package:portfolio/common/widgets/custom_outlined_button.dart';
import 'package:portfolio/utils/constants/custom_animations_strings.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/constants/custom_sizes.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomAnimationScreen extends Responsive {
  final String? lottieAnime, text, actionText, secondActionText, description;
  final double? animationWidth, animationHeight;
  final GestureTapCallback? onActionClick, onSecondActionClick;
  final MainAxisAlignment alignment;

  const CustomAnimationScreen(
      {super.key,
      required this.lottieAnime,
      this.actionText,
      this.onActionClick,
      this.secondActionText,
      this.onSecondActionClick,
      this.description,
      this.animationHeight = 0.4,
      this.animationWidth = 0.4,
      this.alignment = MainAxisAlignment.center,
      this.text});

  @override
  Widget execute(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: isDark(context) ? CustomColors.BLACK : CustomColors.WHITE,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: alignment,
        children: [
          LottieBuilder.asset(
            lottieAnime!,
            width: getWidth(context) * animationWidth!,
            height: getHeight(context) * animationHeight!,
            repeat: true,
          ),
          if (text != null) const SizedBox(height: CustomSizes.SPACE_DEFAULT),
          if (text != null)
            Text(text!, style: Theme.of(context).textTheme.titleLarge),
          if (description != null)
            const SizedBox(height: CustomSizes.SPACE_BETWEEN_SECTIONS),
          if (description != null)
            Text(
              description!,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          if (actionText != null)
            const SizedBox(height: CustomSizes.SPACE_BETWEEN_SECTIONS),
          if (actionText != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomElevatedButton(
                  text: actionText!,
                  onClick: onActionClick!,
                  width: getWidth(context)),
            ),
          if (secondActionText != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomOutlinedButton(
                  text: secondActionText!,
                  onClick: onSecondActionClick!,
                  width: getWidth(context)),
            ),
        ],
      ),
    );
  }
}
