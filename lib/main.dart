import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:portfolio/utils/theme/theme_app.dart';
import 'package:portfolio/utils/responsive/responsive_layout.dart';
import 'package:portfolio/home/mobile_and_tablet_home_screen.dart';
import 'package:portfolio/home/web_home_screen.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends Responsive {
  const Portfolio({super.key});

  @override
  Widget execute(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeApp.lightTheme,
        darkTheme: ThemeApp.darkTheme,
        debugShowCheckedModeBanner: false,
        home: ResponsiveLayout(
          web: WebHomeScreen(),
          mobile: MobileAndTabletHomeScreen(),
        ));
  }
}
