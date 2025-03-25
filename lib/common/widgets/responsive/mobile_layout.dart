import 'package:flutter/material.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/header/header.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/sidebar/sidebar.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key, required this.body});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Sidebar(),
      appBar: Header(
        scaffoldKey: scaffoldKey,
      ),
      body: body ?? const SizedBox(),
    );
  }
}
