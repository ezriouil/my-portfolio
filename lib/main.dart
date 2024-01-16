import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/home/home_screen.dart';
import 'package:portfolio/utils/responsive/responsive.dart';
import 'package:portfolio/utils/theme/theme_app.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends Responsive {
  const Portfolio({super.key});

  @override
  Widget execute(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeApp.lightTheme(context),
        darkTheme: ThemeApp.darkTheme(context),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}
