import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/app.dart';
import 'package:yt_ecommerce_admin_panel/utils/routes/routes.dart';

class TAppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: TRoutes.responsiveDesignScreen,
      page: () => const ResponsiveDesignScreen(),
    ),
    GetPage(name: TRoutes.firstScreen, page: () => const FirstScreen()),
    GetPage(
      name: TRoutes.secondScreen,
      page: () => const SecondScreen(),
    ),
    GetPage(
      name: TRoutes.thirdScreen,
      page: () => const ThirdScreen(),
    ),
  ];
}
