import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:yt_ecommerce_admin_panel/utils/routes/routes.dart';

class SidebarController extends GetxController {
  final activeItem = TRoutes.firstScreen.obs;
  final hoverItem = "".obs;

  void changeActiveItem(String route) {
    activeItem.value = route;
  }

  void changeHoverItem(String route) {
    if (!isActive(route)) {
      hoverItem.value = route;
    }
  }

  bool isActive(String route) {
    return activeItem.value == route;
  }

  bool isHovering(String route) {
    return hoverItem.value == route;
  }

  void menuOnTap(String route) {
    if (!isActive(route)) {
      changeActiveItem(route);
    }

    if (TDeviceUtils.isMobileScreen(Get.context!)) Get.back();
    if (TDeviceUtils.isTabletScreen(Get.context!)) Get.back();

    Get.toNamed(route);
  }
}
