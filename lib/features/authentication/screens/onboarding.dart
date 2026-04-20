import 'package:al_in_one/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:al_in_one/features/authentication/screens/onboardingpage.dart';
import 'package:al_in_one/features/authentication/screens/onboarding_dot_navigation.dart';
import 'package:al_in_one/features/authentication/screens/onboarding_next_button.dart';
import 'package:al_in_one/features/authentication/screens/onboarding_skip.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                  image: TImages.onBoardingImages1,
                  title: TTexts.onBoardingTitle1,
                  subTitle: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImages2,
                  title: TTexts.onBoardingTitle2,
                  subTitle: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImages3,
                  title: TTexts.onBoardingTitle3,
                  subTitle: TTexts.onBoardingSubTitle3)
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          // Circilar Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
