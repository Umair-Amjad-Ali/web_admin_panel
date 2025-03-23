import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/templates/site_layout.dart';
import 'package:yt_ecommerce_admin_panel/utils/routes/app_routes.dart';
import 'package:yt_ecommerce_admin_panel/utils/routes/routes.dart';
import 'utils/constants/text_strings.dart';
import 'utils/device/web_material_scroll.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      getPages: TAppRoutes.pages,
      initialRoute: TRoutes.responsiveDesignScreen,
      home: const ResponsiveDesignScreen(), // directly load screen
    );
  }
}

class ResponsiveDesignScreen extends StatelessWidget {
  const ResponsiveDesignScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const SiteTempleteLayout(
      desktop: Desktop(),
      tablet: Tablet(),
      mobile: Mobile(),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Desktop',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Tablet',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Mobile',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
