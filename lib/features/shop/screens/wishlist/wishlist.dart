import 'package:al_in_one/common/styles/widgets/Icons/t_circular_icon.dart';
import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/common/styles/widgets/layouts/grid_layout.dart';
import 'package:al_in_one/common/styles/widgets/product_cart/product_card_vertical.dart';
import 'package:al_in_one/features/authentication/screens/home/home.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title:
            Text('WishList', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
