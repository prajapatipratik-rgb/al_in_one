import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:al_in_one/common/styles/widgets/login_signup/success_screen/success_screen.dart';
import 'package:al_in_one/features/personalization/screens/cart/cart_items.dart';
import 'package:al_in_one/features/shop/screens/checkout/billing_address_section.dart';
import 'package:al_in_one/features/shop/screens/checkout/billing_amount_section.dart';
import 'package:al_in_one/features/shop/screens/checkout/billing_payment_section.dart';
import 'package:al_in_one/features/shop/screens/checkout/coupon_widgets.dart';
import 'package:al_in_one/navigation_menu.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Items in Cart
              const TCartItems(showAddRemoveButtons: false),
              const SizedBox(height: TSizes.spacedBtwSections),

              /// Coupon TextField
              TCouponCode(),
              const SizedBox(height: TSizes.spacedBtwSections),

              /// Billing Section
              TRoundedContainer(
                padding: const EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: dark ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    ///Pricing
                    TBillingAmountSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Divider
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Payment Methods
                    TBillingPaymentSection(),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    /// Address
                    TBillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      /// Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SucessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'Payment Success!',
                  subtitle: 'Your item will be shipped soon!',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: Text('Checkout \$256.0')),
      ),
    );
  }
}
