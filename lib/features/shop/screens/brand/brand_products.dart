import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/common/styles/widgets/brands/t_brandcard.dart';
import 'package:al_in_one/common/styles/widgets/product_cart/sortable/sortable_products.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TAppBar(
        title: Text(
          'Nike',
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Details
              TBrandCard(showBorder: true),
              SizedBox(height: TSizes.spacedBtwSections),

              TSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
