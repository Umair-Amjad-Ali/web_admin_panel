import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:yt_ecommerce_admin_panel/utils/routes/routes.dart';

class RouteObserver extends GetObserver {
  void dipPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());

    if (previousRoute != null) {
      for (var routeName in TRoutes.sidebarMenuItems) {
        if (previousRoute.settings.name == routeName) {
          sidebarController.activeItem.value = routeName;
          break;
        }
      }
    }
  }

  void dipPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());
    if (previousRoute != null) {
      for (var routeNmae in TRoutes.sidebarMenuItems) {
        if (route.settings.name == routeNmae) {
          sidebarController.activeItem.value = routeNmae;
          break;
        }
      }
    }
  }
}
