import 'package:al_in_one/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:flutter/material.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip')),
    );
  }
}
