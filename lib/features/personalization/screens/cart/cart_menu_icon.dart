import 'package:al_in_one/features/personalization/screens/cart/cart.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
    this.counterBgcolor,
    this.counterTextColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor, counterBgcolor, counterTextColor;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: () => Get.to(() => const CartScreen()),
            icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: counterBgcolor ?? (dark ? TColors.white : TColors.black),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
