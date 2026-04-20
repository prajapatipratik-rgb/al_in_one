import 'package:al_in_one/common/styles/spacing_styles.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              //Image
              Image(
                image: AssetImage(image),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spacedBtwSections),

              //Title and Subtitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.defaultSpace),

              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.defaultSpace),

              // Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed, child: Text(TTexts.tContinue))),
            ],
          ),
        ),
      ),
    );
  }
}
