import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/responsive/desktop_layout.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/responsive/mobile_layout.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/responsive/responsive_design.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/responsive/tablet_layout.dart';

class SiteTempleteLayout extends StatelessWidget {
  const SiteTempleteLayout({
    super.key,
    this.desktop,
    this.tablet,
    this.mobile,
    this.useLayout = true,
  });

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return ResponsiveDesignWidget(
      desktop:
          useLayout ? DesktopLayout(body: desktop) : desktop ?? Container(),
      tablet: useLayout
          ? TabletLayout(body: tablet ?? desktop)
          : tablet ?? desktop ?? Container(),
      mobile: useLayout
          ? MobileLayout(body: mobile ?? desktop)
          : mobile ?? desktop ?? Container(),
    );
  }
}
