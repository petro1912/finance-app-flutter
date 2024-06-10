import 'package:flutter/material.dart';
import 'package:finance_app/config.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < breakpointSmall;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= breakpointSmall &&
      MediaQuery.of(context).size.width <= breakpointMedium;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > breakpointMedium;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width > breakpointMedium) {
      return desktop;
    } else if (size.width >= breakpointSmall && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
