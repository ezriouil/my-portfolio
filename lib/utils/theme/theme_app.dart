import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/theme/custom_theme/custom_app_bar_theme.dart';
import 'package:portfolio/utils/theme/custom_theme/custom_checkbox_theme.dart';
import 'package:portfolio/utils/theme/custom_theme/custom_elevated_button_theme.dart';
import 'package:portfolio/utils/theme/custom_theme/custom_input_theme.dart';
import 'package:portfolio/utils/theme/custom_theme/custom_outlined_button_theme.dart';
import 'package:portfolio/utils/theme/custom_theme/custom_text_theme.dart';

class ThemeApp{
  ThemeApp._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: CustomColors.WHITE,
      primaryColor: CustomColors.PRIMARY,
      elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
      appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      inputDecorationTheme: CustomInputTheme.lightInputTheme,
      textTheme: CustomTextTheme.lightTextTheme,
      checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme);

  /// Dark Theme
  // static ThemeData darkTheme = ThemeData(
  //     useMaterial3: true,
  //     brightness: Brightness.dark,
  //     scaffoldBackgroundColor: CustomColors.BLACK,
  //     primaryColor: CustomColors.PRIMARY,
  //     elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
  //     outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
  //     appBarTheme: CustomAppBarTheme.darkAppBarTheme,
  //     inputDecorationTheme: CustomInputTheme.darkInputTheme,
  //     textTheme: CustomTextTheme.darkTextTheme,
  //     checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme);
}
