import 'package:al_in_one/common/styles/widgets/product_cart/add_remove_button.dart';
import 'package:al_in_one/common/styles/widgets/texts/product_price_text.dart';
import 'package:al_in_one/features/personalization/screens/cart/cart_item.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spacedBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          /// Cart Item
          TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),

          /// Add Remove Button Row with total Price
          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Extra space
                    SizedBox(width: 70),

                    /// Add Remove Buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),

                /// Product Total Price
                TProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
