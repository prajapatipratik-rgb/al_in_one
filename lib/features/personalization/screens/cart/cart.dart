import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/features/personalization/screens/cart/cart_items.dart';
import 'package:al_in_one/features/shop/screens/checkout/checkout.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// Items in Cart
        child: TCartItems(),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: Text('Checkout \$256.0')),
      ),
    );
  }
}
