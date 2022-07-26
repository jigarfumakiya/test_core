import 'package:flutter/material.dart';
import 'package:test_core/core/utils/screen_utils.dart';

/// Provide different designs for [mobile], [tablet] and [desktop] devices

class Responsive extends StatelessWidget {
  final Widget mobile;

  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  /// This size work fine on my design, maybe you need some customization depends on your design

  /// This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 500;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      /// If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        ScreenUtils.init(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
        );
        if (constraints.maxWidth >= 1100) {
          return desktop;
        }

        /// If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 600) {
          return tablet!;
        }

        /// Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}
