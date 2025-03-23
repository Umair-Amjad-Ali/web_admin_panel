import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:yt_ecommerce_admin_panel/utils/routes/routes.dart';

class TRouesMiddleware extends GetMiddleware {
  @override

  // ignore: avoid_positional_boolean_parameters
  RouteSettings? redirect(String? route) {
    // if (route == TRoutes.login) {
    //   return const RouteSettings(name: TRoutes.login);
    // }

    const isAuthenticated = true;
    // ignore: dead_code
    return isAuthenticated ? null : const RouteSettings(name: TRoutes.login);
  }
}
