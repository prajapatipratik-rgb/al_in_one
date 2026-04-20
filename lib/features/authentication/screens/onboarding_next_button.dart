import 'package:al_in_one/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:al_in_one/utils/device/device_utility.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:al_in_one/utils/constants/sizes.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: dark ? TColors.primaryColor : Colors.black),
          child: const Icon(Iconsax.arrow_right_3_copy),
        ));
  }
}
