import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';

class CustomInputTheme {
  CustomInputTheme._();

  /// Text Field For Light Theme
  static InputDecorationTheme lightInputTheme(BuildContext context) {

    /*___ DEVICE TYPE ___*/
    final bool isMobile = context.width < 650;
    final bool isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    final double textSize = isMobile ? 16.0 : isTablet ? 24.0 : 32.0;

    return InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: CustomColors.GREY_DARK,
      suffixIconColor: CustomColors.GREY_DARK,
      labelStyle: const TextStyle().copyWith(fontSize: textSize, color: CustomColors.BLACK),
      hintStyle: const TextStyle().copyWith(fontSize: textSize, color: CustomColors.GREY_LIGHT),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: CustomColors.BLACK.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(color: CustomColors.GREY_DARK)),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(color: CustomColors.GREY_DARK)),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(color: CustomColors.BLACK.withOpacity(0.8))),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(color: CustomColors.PRIMARY)),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide:
            BorderSide(color: CustomColors.PRIMARY.withOpacity(0.5)),
      ),
    );
  }

  /// Text Field For Dark Theme
  static InputDecorationTheme darkInputTheme(BuildContext context) {

    /*___ DEVICE TYPE ___*/
    final bool isMobile = context.width < 650;
    final bool isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    final double textSize = isMobile ? 16.0 : isTablet ? 24.0 : 32.0;

    return InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: CustomColors.GREY_LIGHT,
      suffixIconColor: CustomColors.GREY_LIGHT,
      labelStyle:
          const TextStyle().copyWith(fontSize: textSize, color: CustomColors.WHITE),
      hintStyle: const TextStyle()
          .copyWith(fontSize: textSize, color: CustomColors.WHITE.withOpacity(0.4)),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle()
          .copyWith(color: CustomColors.BLACK.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(color: CustomColors.GREY_DARK)),
      enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(color: CustomColors.GREY_DARK)),
      focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(color: CustomColors.WHITE)),
      errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: const BorderSide(color: CustomColors.PRIMARY)),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14.0),
          borderSide:
              BorderSide(color: CustomColors.GREY_LIGHT.withOpacity(0.5))),
    );
  }
}
