import 'package:al_in_one/common/styles/widgets/Icons/t_circular_icon.dart';
import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:al_in_one/common/styles/widgets/image_text_widget/rounded_image.dart';
import 'package:al_in_one/common/styles/widgets/texts/product_price_text.dart';
import 'package:al_in_one/common/styles/widgets/texts/product_title_text.dart';
import 'package:al_in_one/common/styles/widgets/texts/t_brand_title_with_verified_icon.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.lightContainer,
      ),
      child: Row(
        children: [
          /// Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                /// Thumbnail image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),
                ),

                /// -- Sale Tag
                Positioned(
                  top: 12,
                  child: TRoundedContainer(
                    radius: TSizes.sm,
                    // ignore: deprecated_member_use
                    backgroundColor: TColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.sm, vertical: TSizes.xs),
                    child: Text('25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black)),
                  ), // TRoundedContainer
                ), // Positioned

                /// -- Favourite Icon Button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: TCircularIcon(icon: Iconsax.heart, color: Colors.red),
                ), // Positioned
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TProductTitleText(
                          title: 'Green Nike Half Sleeves Shirt',
                          smallSize: true),
                      SizedBox(height: TSizes.spaceBtwItems / 2),
                      TBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Pricing
                      Flexible(child: TProductPriceText(price: '256.0')),

                      /// Add to cart
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(TSizes.productImageRadius),
                          ), // BorderRadius.only
                        ), // BoxDecoration
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Icon(Iconsax.add_copy, color: TColors.white),
                        ), // SizedBox
                      ), // Container
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ); // BoxDecoration
  }
} // Container
