import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? TColors.dark : TColors.white,
      padding: const EdgeInsets.only(
          top: TSizes.sm, bottom: TSizes.sm, right: TSizes.sm, left: TSizes.md),
      child: Row(
        children: [
          ///TextField
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          /// Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          // ignore: deprecated_member_use
                          ? TColors.white.withOpacity(0.5)
                          // ignore: deprecated_member_use
                          : TColors.dark.withOpacity(0.5),
                      // ignore: deprecated_member_use
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      // ignore: deprecated_member_use
                      side: BorderSide(
                        // ignore: deprecated_member_use
                        color: Colors.grey.withOpacity(0.1),
                      )),
                  child: Text('Apply')))
        ],
      ),
    );
  }
}
