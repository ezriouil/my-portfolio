import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive/responsive.dart';

class ResponsiveLayout extends Responsive {
  final Widget mobile;
  final Widget web;

  const ResponsiveLayout({
    super.key,
    required this.web,
    required this.mobile,
  });

  @override
  Widget execute(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth >= 1200) return web;
      else return mobile;
    });
  }
}
