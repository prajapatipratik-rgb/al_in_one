import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/search_container.dart';
import 'package:al_in_one/common/styles/widgets/layouts/grid_layout.dart';
import 'package:al_in_one/common/styles/widgets/product_cart/product_card_vertical.dart';
import 'package:al_in_one/common/styles/widgets/texts/section_heading.dart';
import 'package:al_in_one/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:al_in_one/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:al_in_one/features/authentication/screens/home/widgets/promo_slider.dart';
import 'package:al_in_one/features/shop/screens/all_products/all_products.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //App Bar
                  const THomeAppBar(),
                  SizedBox(
                    height: TSizes.defaultSpace,
                  ),

                  // search bar
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.defaultSpace,
                  ),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// scrollable catrgories
                        THomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: TSizes.spacedBtwSections,
                  )
                ],
              ),
            ),

            /// Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    TPromoSlider(
                      banners: [
                        TImages.promoBanner1,
                        TImages.promoBanner2,
                        TImages.promoBanner3
                      ],
                    ),
                    SizedBox(height: TSizes.spacedBtwSections),

                    // Heading
                    TSectionHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => const AllProducts()),
                    ),
                    const SizedBox(
                      height: TSizes.spacedBtwSections,
                    ),

                    /// Popular Products
                    TGridLayout(
                        itemCount: 2,
                        itemBuilder: (_, index) => const TProductCardVertical())
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
