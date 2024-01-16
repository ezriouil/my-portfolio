import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:get/get.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();


  /// App Bar For Light Theme
  static AppBarTheme lightAppBarTheme(BuildContext context) {

    /*___ DEVICE TYPE ___*/
    final isMobile = context.width < 650;
    final isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    final titleSize = isMobile ? 18.0 : isTablet ? 24.0 : 42.0;
    final actionsIconSize = isMobile ? 24.0 : isTablet ? 32.0 : 40.0;

    return  AppBarTheme(
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0.0,
        backgroundColor: CustomColors.TRANSPARENT,
        surfaceTintColor: CustomColors.TRANSPARENT,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: CustomColors.WHITE,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
            systemNavigationBarColor: CustomColors.WHITE,
            systemNavigationBarIconBrightness: Brightness.dark,
            systemNavigationBarDividerColor: CustomColors.WHITE),
        iconTheme: IconThemeData(color: CustomColors.BLACK, size: actionsIconSize),
        actionsIconTheme: IconThemeData(color: CustomColors.BLACK, size: actionsIconSize),
        titleTextStyle: TextStyle(
            fontSize: titleSize,
            fontWeight: FontWeight.w600,
            color: CustomColors.BLACK));
  }

  /// App Bar For Dark Theme
  static AppBarTheme darkAppBarTheme(BuildContext context) {

    /*___ DEVICE TYPE ___*/
    final isMobile = context.width < 650;
    final isTablet = context.width >= 650 && context.width < 1100;

    /*___ CUSTOM PROPER ___*/
    final titleSize = isMobile ? 18.0 : isTablet ? 24.0 : 42.0;
    final actionsIconSize = isMobile ? 24.0 : isTablet ? 32.0 : 40.0;

    return AppBarTheme(
      elevation: 0,
      centerTitle: true,
      scrolledUnderElevation: 0.0,
      backgroundColor: CustomColors.TRANSPARENT,
      surfaceTintColor: CustomColors.TRANSPARENT,
      iconTheme: IconThemeData(color: CustomColors.WHITE, size: actionsIconSize),
      actionsIconTheme: IconThemeData(color: CustomColors.WHITE, size: actionsIconSize),
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: CustomColors.BLACK,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: CustomColors.BLACK,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: CustomColors.BLACK),
      titleTextStyle: TextStyle(
          fontSize: titleSize,
          fontWeight: FontWeight.w600,
          color: CustomColors.WHITE));
  }
}
