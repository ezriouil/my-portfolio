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
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: CustomColors.WHITE,
      primaryColor: CustomColors.PRIMARY,
      elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme(context),
      outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme(context),
      appBarTheme: CustomAppBarTheme.lightAppBarTheme(context),
      inputDecorationTheme: CustomInputTheme.lightInputTheme(context),
      textTheme: CustomTextTheme.lightTextTheme(context),
      checkboxTheme: CustomCheckboxTheme.lightCheckboxTheme);

  /// Dark Theme
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: CustomColors.BLACK,
      primaryColor: CustomColors.PRIMARY,
      elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme(context),
      outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme(context),
      appBarTheme: CustomAppBarTheme.darkAppBarTheme(context),
      inputDecorationTheme: CustomInputTheme.darkInputTheme(context),
      textTheme: CustomTextTheme.darkTextTheme(context),
      checkboxTheme: CustomCheckboxTheme.darkCheckboxTheme);
}
