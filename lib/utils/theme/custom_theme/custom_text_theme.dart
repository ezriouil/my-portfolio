import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';

class CustomTextTheme{
  CustomTextTheme._();

  /// Text For Light Theme
  static final TextTheme lightTextTheme = TextTheme(
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: CustomColors.WHITE),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: CustomColors.WHITE),
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: CustomColors.WHITE),

    titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: CustomColors.WHITE),
    titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: CustomColors.WHITE),
    titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: CustomColors.WHITE),

    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: CustomColors.WHITE.withOpacity(0.5)),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: CustomColors.WHITE),
    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold, color: CustomColors.WHITE),
  );

  /// Text For Dark Theme
  // static final TextTheme darkTextTheme = TextTheme(
  //   headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: CustomColors.WHITE),
  //   headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: CustomColors.WHITE),
  //   headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: CustomColors.WHITE),
  //
  //   titleSmall: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: CustomColors.WHITE),
  //   titleMedium: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: CustomColors.WHITE),
  //   titleLarge: const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.bold, color: CustomColors.WHITE),
  //
  //   bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: CustomColors.WHITE.withOpacity(0.5)),
  //   bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.bold, color: CustomColors.WHITE),
  //   bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: CustomColors.WHITE),
  // );
}
