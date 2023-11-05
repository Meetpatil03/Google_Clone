import 'package:flutter/material.dart';

class ResponsiveScreenLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget desktopScreenLayout;
  const ResponsiveScreenLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.desktopScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 768) {
          return mobileScreenLayout;
        } else {
          return desktopScreenLayout;
        }
      },
    );
  }
}
