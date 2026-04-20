import 'package:al_in_one/common/styles/widgets/Icons/t_circular_icon.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus_copy,
          width: 32,
          height: 32,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context)
              ? TColors.white
              : TColors.black,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: TSizes.spaceBtwItems),
        TCircularIcon(
            icon: Iconsax.add_copy,
            width: 32,
            height: 32,
            size: TSizes.md,
            color: TColors.white,
            backgroundColor: TColors.primaryColor),
      ],
    );
  }
}
