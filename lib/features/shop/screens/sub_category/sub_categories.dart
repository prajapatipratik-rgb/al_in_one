import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/common/styles/widgets/image_text_widget/rounded_image.dart';
import 'package:al_in_one/common/styles/widgets/product_cart/product_card_horizontal.dart';
import 'package:al_in_one/common/styles/widgets/texts/section_heading.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports shirts'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              TRoundedImage(
                  imageUrl: TImages.promoBanner3,
                  applyImageRadius: true,
                  width: double.infinity),
              const SizedBox(height: TSizes.spacedBtwSections),

              /// Sub-Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spacedBtwSections / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, builder) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            TProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
