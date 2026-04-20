import 'package:al_in_one/common/styles/widgets/layouts/grid_layout.dart';
import 'package:al_in_one/common/styles/widgets/product_cart/product_card_vertical.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// DropDown
        DropdownButtonFormField(
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            onChanged: (value) {},
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) =>
                    DropdownMenuItem(value: option, child: Text(option)))
                .toList()),
        const SizedBox(height: TSizes.spacedBtwSections),

        /// Products
        TGridLayout(
            itemCount: 8, itemBuilder: (_, index) => TProductCardVertical())
      ],
    );
  }
}
