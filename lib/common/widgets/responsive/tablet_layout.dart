import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/header/header.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key, required this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const Header(),
      body: body ?? const SizedBox(),
    );
  }
}
