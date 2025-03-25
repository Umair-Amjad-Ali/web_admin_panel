import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/sidebar/sidebar_controller.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';

class Menuitems extends StatelessWidget {
  const Menuitems(
      {super.key,
      required this.route,
      required this.icon,
      required this.itemName});

  final String route;
  final IconData icon;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(SidebarController());
    return InkWell(
        onTap: () => menuController.menuOnTap(route),
        onHover: (value) => value
            ? menuController.changeHoverItem(route)
            : menuController.changeHoverItem(''),
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.symmetric(vertical: TSizes.xs),
            child: Container(
              decoration: BoxDecoration(
                color: menuController.isHovering(route) ||
                        menuController.isActive(route)
                    ? TColors.primary
                    : Colors.transparent,
                borderRadius: const BorderRadius.all(
                    Radius.circular(TSizes.cardRadiusMd)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: TSizes.md,
                        right: TSizes.md,
                        top: TSizes.sm,
                        bottom: TSizes.sm),
                    child: menuController.isActive(route)
                        ? Icon(
                            icon,
                            color: TColors.white,
                            size: 20,
                          )
                        : Icon(
                            icon,
                            color: menuController.isHovering(route)
                                ? TColors.white
                                : TColors.darkGrey,
                            size: 20,
                          ),
                  ),
                  if (menuController.isHovering(route) ||
                      menuController.isActive(route))
                    Flexible(
                      child: Text(
                        itemName,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.apply(color: TColors.white),
                      ),
                    )
                  else
                    Flexible(
                      child: Text(
                        itemName,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.apply(color: TColors.darkGrey),
                      ),
                    )
                ],
              ),
            ),
          ),
        ));
  }
}
