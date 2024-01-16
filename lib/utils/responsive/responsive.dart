import 'package:get/get.dart';
import 'package:portfolio/utils/constants/custom_colors.dart';
import 'package:portfolio/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

abstract class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    isDark(context);
    darkLightColor(context);
    primaryColor(context);
    return execute(context);
  }

  /// BUILD METHODE
  Widget execute(BuildContext context);

  /// INFO
  double getWidth(BuildContext context) =>
      DeviceUtility.getDeviceWidth(context);

  double getHeight(BuildContext context) =>
      DeviceUtility.getDeviceHeight(context);

  bool isDark(BuildContext context) => DeviceUtility.isDark(context);

  Color grayColor(BuildContext context) => CustomColors.GREY_DARK;

  Color darkLightColor(BuildContext context) {
    return isDark(context) ? CustomColors.WHITE : CustomColors.BLACK;
  }

  Color darkDarkLightLightColor(BuildContext context) {
    return isDark(context) ? CustomColors.BLACK : CustomColors.WHITE;
  }

  Color yellowColor(BuildContext context) {
    return isDark(context)
        ? CustomColors.YELLOW_DARK
        : CustomColors.YELLOW_LIGHT;
  }

  Color primaryColor(BuildContext context) {
    return CustomColors.PRIMARY;
  }

  double spaceBetweenItems(BuildContext context) =>
      context.width < 650 ? 16.0 : context.width >= 650 && context.width < 1100 ? 24.0 : 32.0;


  double spaceDefault(BuildContext context) =>
      context.width < 650 ? 24.0 : context.width >= 650 && context.width < 1100 ? 48.0 : 72.0;

  double spaceBetweenSections(BuildContext context) =>
      context.width < 650 ? 32.0 : context.width >= 650 && context.width < 1100 ? 64.0 : 96.0;

}
