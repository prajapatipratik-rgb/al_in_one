import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/common/styles/widgets/brands/t_brandcard.dart';
import 'package:al_in_one/common/styles/widgets/layouts/grid_layout.dart';
import 'package:al_in_one/common/styles/widgets/texts/section_heading.dart';
import 'package:al_in_one/features/shop/screens/brand/brand_products.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Heading
              TSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              SizedBox(height: TSizes.spaceBtwItems),

              /// Brands
              TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => TBrandCard(
                        showBorder: true,
                        onTap: () => Get.to(() => const BrandProducts()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
