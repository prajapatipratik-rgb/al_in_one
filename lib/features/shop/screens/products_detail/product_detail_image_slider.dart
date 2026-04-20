import 'package:al_in_one/common/styles/widgets/Icons/t_circular_icon.dart';
import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/common/styles/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:al_in_one/common/styles/widgets/image_text_widget/rounded_image.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            //Main Large Image
            SizedBox(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
                  child: Center(
                      child: Image(image: AssetImage(TImages.productImage1))),
                )),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __) => const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => TRoundedImage(
                      width: 80,
                      backgroundColor: dark ? TColors.dark : TColors.white,
                      border: Border.all(color: TColors.primaryColor),
                      padding: EdgeInsets.all(TSizes.sm),
                      imageUrl: TImages.productImage3),
                ),
              ),
            ),

            /// Appbar Icons
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(
                  icon: Iconsax.heart,
                  color: Colors.red,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
