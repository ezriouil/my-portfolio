import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';

class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._();

  /// Elevated Button For Light Theme
  static ElevatedButtonThemeData lightElevatedButtonTheme(BuildContext context) {

    /*___ DEVICE TYPE ___*/
    final bool isMobile = context.width < 650;
    final bool isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    const double textSize = 16.0;
    final double btnHeight = isMobile ? 18.0 : isTablet ? 22.0 : 24.0;

    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shadowColor: CustomColors.PRIMARY,
            elevation: 6,
            backgroundColor: CustomColors.PRIMARY,
            foregroundColor: CustomColors.WHITE,
            disabledBackgroundColor: CustomColors.GREY_DARK,
            disabledForegroundColor: CustomColors.GREY_DARK,
            side: BorderSide(color: CustomColors.PRIMARY.withOpacity(0.8)),
            padding: EdgeInsets.symmetric(vertical: btnHeight),
            textStyle: const TextStyle(
                fontSize: textSize,
                color: Colors.white,
                fontWeight: FontWeight.w600),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))));
  }

  /// Elevated Button For Dark Theme
  static ElevatedButtonThemeData darkElevatedButtonTheme(BuildContext context) {

    /*___ DEVICE TYPE ___*/
    final bool isMobile = context.width < 650;
    final bool isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    const double textSize = 16.0;
    final double btnHeight = isMobile ? 18.0 : isTablet ? 22.0 : 24.0;

    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            elevation: 6,
            shadowColor: CustomColors.PRIMARY,
            backgroundColor: CustomColors.PRIMARY,
            foregroundColor: CustomColors.WHITE,
            disabledBackgroundColor: CustomColors.GREY_LIGHT,
            disabledForegroundColor: CustomColors.GREY_LIGHT,
            side: BorderSide(color: CustomColors.PRIMARY.withOpacity(0.8)),
            padding:  EdgeInsets.symmetric(vertical: btnHeight),
            textStyle:  const TextStyle(
                fontSize: textSize, color: Colors.white, fontWeight: FontWeight.w600),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))));
  }
}
