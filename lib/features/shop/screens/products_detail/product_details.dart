import 'package:al_in_one/common/styles/widgets/texts/section_heading.dart';
import 'package:al_in_one/features/shop/screens/products_detail/bottom_add_to_cart.dart';
import 'package:al_in_one/features/shop/screens/products_detail/product_attributes.dart';
import 'package:al_in_one/features/shop/screens/products_detail/product_detail_image_slider.dart';
import 'package:al_in_one/features/shop/screens/products_detail/product_meta_data.dart';
import 'package:al_in_one/features/shop/screens/products_detail/rating_share.dart';
import 'package:al_in_one/features/shop/screens/products_reviews/product_review.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            TProductImageSlider(),

            /// Product details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Rating and share button
                  TRatingAndShare(),

                  ///  Price Title Stack and Brand
                  TProductMetaData(),

                  /// Attributes
                  TProductAttributes(),
                  const SizedBox(
                    height: TSizes.spacedBtwSections,
                  ),

                  /// Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text('Checkout'))),
                  const SizedBox(
                    height: TSizes.spacedBtwSections,
                  ),

                  /// Description
                  const TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am just practicing and nothing else.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: Icon(
                            Iconsax.arrow_right_3_copy,
                            size: 18,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spacedBtwSections,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
