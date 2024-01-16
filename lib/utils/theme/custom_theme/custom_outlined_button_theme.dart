import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';

class CustomOutlinedButtonTheme {
  CustomOutlinedButtonTheme._();

  /// Outlined Button Light Theme
  static  OutlinedButtonThemeData lightOutlinedButtonTheme(BuildContext context)
  {

    /*___ DEVICE TYPE ___*/
    final bool isMobile = context.width < 650;
    final bool isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    final double textSize = isMobile ? 16.0 : isTablet ? 24.0 : 32.0;
    final double btnHeight = isMobile ? 18.0 : isTablet ? 22.0 : 24.0;
    final double btnWidth = isMobile ? 20.0 : isTablet ? 24.0 : 30.0;

    return OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            foregroundColor: CustomColors.BLACK,
            elevation: 0,
            side: const BorderSide(color: CustomColors.BLACK),
            textStyle:  TextStyle(
                fontSize: textSize,
                color: CustomColors.BLACK,
                fontWeight: FontWeight.w600),
            padding:  EdgeInsets.symmetric(horizontal: btnWidth, vertical: btnHeight),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))));
  }

  /// Outlined Button Dark Theme
  static OutlinedButtonThemeData darkOutlinedButtonTheme(BuildContext context){

    /*___ DEVICE TYPE ___*/
    final bool isMobile = context.width < 650;
    final bool isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    final double textSize = isMobile ? 16.0 : isTablet ? 24.0 : 32.0;
    final double btnHeight = isMobile ? 18.0 : isTablet ? 22.0 : 24.0;
    final double btnWidth = isMobile ? 20.0 : isTablet ? 24.0 : 30.0;

    return OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            elevation: 0,
            foregroundColor: CustomColors.WHITE,
            side: const BorderSide(color: CustomColors.WHITE),
            textStyle: TextStyle(
                fontSize: textSize,
                color: CustomColors.WHITE,
                fontWeight: FontWeight.w600),
            padding: EdgeInsets.symmetric(horizontal: btnWidth, vertical: btnHeight),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))));
}

}
