import 'package:flutter/material.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
