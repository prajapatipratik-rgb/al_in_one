import 'package:al_in_one/common/styles/shadows.dart';
import 'package:al_in_one/common/styles/widgets/Icons/t_circular_icon.dart';
import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:al_in_one/common/styles/widgets/image_text_widget/rounded_image.dart';
import 'package:al_in_one/common/styles/widgets/texts/product_price_text.dart';
import 'package:al_in_one/common/styles/widgets/texts/product_title_text.dart';
import 'package:al_in_one/common/styles/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:al_in_one/features/shop/screens/products_detail/product_details.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, WhishList Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// Thumbnail Image
                  TRoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),

                  /// Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      // ignore: deprecated_member_use
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  ///  Favourite Icon Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),

            ///  Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TProductTitleText(
                      title: 'Green Nike Air Shoes',
                      smallSize: true,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),
                    TBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                    ),
                  ],
                ),
              ),
            ),
            //add spacer()  here to keep the height of each box some in case 1 or 2 lines of headings
            Spacer(),

            //PriceRow
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Price
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.sm),
                  child: const TProductPriceText(price: '35.0'),
                ),

                // Add to Cart Button
                Container(
                  decoration: BoxDecoration(
                      color: TColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(TSizes.cardRadiusMd),
                        bottomRight: Radius.circular(TSizes.productImageRadius),
                      )),
                  child: SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add_copy,
                        color: TColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
