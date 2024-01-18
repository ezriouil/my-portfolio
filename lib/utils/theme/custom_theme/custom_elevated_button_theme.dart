import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';

class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._();

  /// Elevated Button For Light Theme
  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shadowColor: CustomColors.PRIMARY_1,
              elevation: 12,
              backgroundColor: CustomColors.PRIMARY_1,
              foregroundColor: CustomColors.WHITE,
              disabledBackgroundColor: CustomColors.GREY_DARK,
              disabledForegroundColor: CustomColors.GREY_DARK,
              side: BorderSide(color: CustomColors.PRIMARY_1.withOpacity(0.8)),
              padding: const EdgeInsets.symmetric(vertical: 18),
              textStyle:
                  const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))));

  /// Elevated Button For Dark Theme
  // static ElevatedButtonThemeData darkElevatedButtonTheme =
  //     ElevatedButtonThemeData(
  //         style: ElevatedButton.styleFrom(
  //             elevation: 12,
  //             shadowColor: CustomColors.PRIMARY_1,
  //             backgroundColor: CustomColors.PRIMARY_1,
  //             foregroundColor: CustomColors.WHITE,
  //             disabledBackgroundColor: CustomColors.GREY_LIGHT,
  //             disabledForegroundColor: CustomColors.GREY_LIGHT,
  //             side: BorderSide(color: CustomColors.PRIMARY_1.withOpacity(0.8)),
  //             padding: const EdgeInsets.symmetric(vertical: 18),
  //             textStyle: const TextStyle(
  //                 fontSize: 16,
  //                 color: Colors.white,
  //                 fontWeight: FontWeight.w600),
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(12))));
}
