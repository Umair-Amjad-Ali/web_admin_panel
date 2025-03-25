import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/images/t_circular_image.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/layouts/sidebar/menuItems.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:yt_ecommerce_admin_panel/utils/routes/routes.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const BeveledRectangleBorder(),
      child: Container(
        decoration: const BoxDecoration(
          color: TColors.white,
          border: Border(right: BorderSide(color: TColors.grey, width: 1)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TCircularImage(
                width: 80,
                height: 80,
                image: TImages.darkAppLogo,
                backgroundColor: Colors.transparent,
              ),
              Padding(
                padding: const EdgeInsets.all(TSizes.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Menu',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.apply(letterSpacingDelta: 1.2)),
                    const Menuitems(
                      route: TRoutes.firstScreen,
                      icon: Iconsax.music_dashboard,
                      itemName: 'Dashboard',
                    ),
                    const Menuitems(
                      route: TRoutes.secondScreen,
                      icon: Iconsax.image,
                      itemName: 'Media',
                    ),
                    const Menuitems(
                      route: TRoutes.thirdScreen,
                      icon: Iconsax.picture_frame,
                      itemName: 'Banner',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
