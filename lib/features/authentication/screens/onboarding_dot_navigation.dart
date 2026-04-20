import 'package:al_in_one/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:al_in_one/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/constants/colors.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 6),
        ));
  }
}
