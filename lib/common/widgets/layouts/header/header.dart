import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/images/t_rounded_image.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/image_strings.dart';
import 'package:yt_ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:yt_ecommerce_admin_panel/utils/device/device_utility.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key, this.scaffoldKey});

  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: TColors.white,
        border: Border(bottom: BorderSide(color: TColors.grey, width: 1)),
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.md, vertical: TSizes.sm),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: !TDeviceUtils.isDesktopScreen(context)
            ? IconButton(
                icon: const Icon(Iconsax.menu),
                onPressed: () {
                  scaffoldKey?.currentState!.openDrawer();
                },
              )
            : null,
        title: TDeviceUtils.isDesktopScreen(context)
            ? const SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Iconsax.search_normal),
                  ),
                ))
            : null,
        actions: [
          if (!TDeviceUtils.isDesktopScreen(context))
            IconButton(
              icon: const Icon(Iconsax.search_normal),
              onPressed: () {},
            ),
          IconButton(
            icon: const Icon(Iconsax.notification),
            onPressed: () {},
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2),
          Row(
            children: [
              const TRoundedImage(
                width: 40,
                height: 40,
                imageType: ImageType.asset,
                image: TImages.user,
              ),
              const SizedBox(width: TSizes.sm),
              if (!TDeviceUtils.isMobileScreen(context))
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Umair Amjad',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'codewithumair@gmail.com',
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                )
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(TDeviceUtils.getAppBarHeight() + 15);
}
