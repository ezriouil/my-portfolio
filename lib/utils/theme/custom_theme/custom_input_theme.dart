import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';

class CustomInputTheme {
  CustomInputTheme._();

  /// Text Field For Light Theme
  static InputDecorationTheme lightInputTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: CustomColors.GREY_DARK,
    suffixIconColor: CustomColors.GREY_DARK,
    labelStyle: const TextStyle().copyWith(fontSize: 14.0, color: CustomColors.BLACK),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0, color: CustomColors.GREY_LIGHT),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: CustomColors.BLACK.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: const BorderSide(color: CustomColors.GREY_DARK)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: const BorderSide(color: CustomColors.GREY_DARK)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide:  BorderSide(color: CustomColors.BLACK.withOpacity(0.8))),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: const BorderSide(color: CustomColors.PRIMARY_1)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14.0),
      borderSide: BorderSide(color: CustomColors.PRIMARY_1.withOpacity(0.5)),
    ),
  );

  /// Text Field For Dark Theme
  // static InputDecorationTheme darkInputTheme = InputDecorationTheme(
  //   errorMaxLines: 3,
  //   prefixIconColor: CustomColors.GREY_LIGHT,
  //   suffixIconColor: CustomColors.GREY_LIGHT,
  //   labelStyle:
  //       const TextStyle().copyWith(fontSize: 14.0, color: CustomColors.WHITE),
  //   hintStyle:
  //       const TextStyle().copyWith(fontSize: 14.0, color: CustomColors.GREY_DARK),
  //   errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
  //   floatingLabelStyle:
  //       const TextStyle().copyWith(color: CustomColors.BLACK.withOpacity(0.8)),
  //   border: const OutlineInputBorder().copyWith(
  //       borderRadius: BorderRadius.circular(14.0),
  //       borderSide: const BorderSide(color: CustomColors.GREY_DARK)),
  //   enabledBorder: const OutlineInputBorder().copyWith(
  //       borderRadius: BorderRadius.circular(14.0),
  //       borderSide: const BorderSide(color: CustomColors.GREY_DARK)),
  //   focusedBorder: const OutlineInputBorder().copyWith(
  //       borderRadius: BorderRadius.circular(14.0),
  //       borderSide: const BorderSide(color: CustomColors.WHITE)),
  //   errorBorder: const OutlineInputBorder().copyWith(
  //       borderRadius: BorderRadius.circular(14.0),
  //       borderSide: const BorderSide(color: CustomColors.PRIMARY_1)),
  //   focusedErrorBorder: const OutlineInputBorder().copyWith(
  //       borderRadius: BorderRadius.circular(14.0),
  //       borderSide:
  //           BorderSide(color: CustomColors.GREY_LIGHT.withOpacity(0.5))),
  // );
}
