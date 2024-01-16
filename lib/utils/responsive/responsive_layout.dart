import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive/responsive.dart';

class ResponsiveLayout extends Responsive {
  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const ResponsiveLayout({
    super.key,
    required this.web,
    required this.mobile,
    required this.tablet,
  });

  @override
  Widget execute(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      switch (constraints.maxWidth) {
        case >= 1100:
          return web;
        case >= 650 && < 1100:
          return tablet;
        default:
          return mobile;
      }
    });
  }
}
