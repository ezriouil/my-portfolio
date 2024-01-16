import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';

class CustomTextTheme{
  CustomTextTheme._();

  /// Text For Light Theme
  static TextTheme lightTextTheme(BuildContext context) {

    /*___ DEVICE TYPE ___*/
    final bool isMobile = context.width < 650;
    final bool isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    final double headLine = isMobile ? 18.0 : isTablet ? 22.0 : 44.0;
    const double titleSize =  16.0;
    const double bodySize =  14.0 ;

    return TextTheme(

      headlineSmall: const TextStyle().copyWith(fontSize: headLine, fontWeight: FontWeight.w600, color: CustomColors.WHITE, fontFamily: "San"),
      headlineMedium: const TextStyle().copyWith(fontSize: headLine + 6, fontWeight: FontWeight.w600, color: CustomColors.WHITE, fontFamily: "San"),
      headlineLarge: const TextStyle().copyWith(fontSize: headLine + 8, fontWeight: FontWeight.bold, color: CustomColors.WHITE, fontFamily: "San"),

      titleSmall: const TextStyle().copyWith(fontSize: titleSize, fontWeight: FontWeight.w400, color: CustomColors.WHITE, fontFamily: "San"),
      titleMedium: const TextStyle().copyWith(fontSize: titleSize, fontWeight: FontWeight.w500, color: CustomColors.WHITE, fontFamily: "San"),
      titleLarge: const TextStyle().copyWith(fontSize: titleSize, fontWeight: FontWeight.bold, color: CustomColors.WHITE, fontFamily: "San"),

      bodySmall: const TextStyle().copyWith(fontSize: bodySize, fontWeight: FontWeight.w500, color: CustomColors.WHITE.withOpacity(0.5), fontFamily: "San"),
      bodyMedium: const TextStyle().copyWith(fontSize: bodySize, fontWeight: FontWeight.w500, color: CustomColors.WHITE, fontFamily: "San"),
      bodyLarge: const TextStyle().copyWith(fontSize: bodySize, fontWeight: FontWeight.bold, color: CustomColors.WHITE, fontFamily: "San"),

    );
  }

  /// Text For Dark Theme
  static TextTheme darkTextTheme(BuildContext context) {

    /*___ DEVICE TYPE ___*/
    final bool isMobile = context.width < 650;
    final bool isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    final double headLine = isMobile ? 18.0 : isTablet ? 22.0 : 44.0;
    const double titleSize =  16.0;
    const double bodySize =14.0;

    return TextTheme(

      headlineSmall: const TextStyle().copyWith(fontSize: headLine, fontWeight: FontWeight.w600, color: CustomColors.WHITE, fontFamily: "San"),
      headlineMedium: const TextStyle().copyWith(fontSize: headLine + 6, fontWeight: FontWeight.w600, color: CustomColors.WHITE, fontFamily: "San"),
      headlineLarge: const TextStyle().copyWith(fontSize: headLine + 8, fontWeight: FontWeight.bold, color: CustomColors.WHITE, fontFamily: "San"),

      titleSmall: const TextStyle().copyWith(fontSize: titleSize, fontWeight: FontWeight.w400, color: CustomColors.WHITE, fontFamily: "San"),
      titleMedium: const TextStyle().copyWith(fontSize: titleSize, fontWeight: FontWeight.w500, color: CustomColors.WHITE, fontFamily: "San"),
      titleLarge: const TextStyle().copyWith(fontSize: titleSize, fontWeight: FontWeight.bold, color: CustomColors.WHITE, fontFamily: "San"),

      bodySmall: const TextStyle().copyWith(fontSize: bodySize, fontWeight: FontWeight.w500, color: CustomColors.WHITE.withOpacity(0.5), fontFamily: "San"),
      bodyMedium: const TextStyle().copyWith(fontSize: bodySize, fontWeight: FontWeight.bold, color: CustomColors.WHITE, fontFamily: "San"),
      bodyLarge: const TextStyle().copyWith(fontSize: bodySize, fontWeight: FontWeight.w500, color: CustomColors.WHITE, fontFamily: "San"),

    );
  }
}
