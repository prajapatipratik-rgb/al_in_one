import 'package:al_in_one/common/styles/widgets/brands/brand_show_case.dart';
import 'package:al_in_one/common/styles/widgets/layouts/grid_layout.dart';
import 'package:al_in_one/common/styles/widgets/product_cart/product_card_vertical.dart';
import 'package:al_in_one/common/styles/widgets/texts/section_heading.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Brands
                TBrandShowcase(images: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1
                ]),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                /// Products
                TSectionHeading(
                  title: 'You might like',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => TProductCardVertical()),
                const SizedBox(
                  height: TSizes.spacedBtwSections,
                )
              ],
            ),
          ),
        ]);
  }
}
