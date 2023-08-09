import 'package:flutter/material.dart';

class Responce extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responce({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool ismobile(context) => MediaQuery.of(context).size.width < 870;
  static bool istablet(context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 870;
  static bool isdesktop(context) => MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width > 1100) {
      return desktop;
    } else if (width >= 870 && tablet != null) {
      return tablet!;
    }
    return mobile;
  }
}
