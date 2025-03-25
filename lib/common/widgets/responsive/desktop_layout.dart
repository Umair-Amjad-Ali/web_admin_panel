import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/header/header.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/sidebar/sidebar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, required this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: Sidebar()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                // Header
                const Header(),

                // Main Body
                Expanded(
                  child: body ?? const SizedBox(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
