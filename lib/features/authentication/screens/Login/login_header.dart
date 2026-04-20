import 'package:flutter/material.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image(
        height: 150,
        image: AssetImage(dark ? TImages.lightApplogo : TImages.darkAppLogo),
      ),
      Text(TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium),
      const SizedBox(height: TSizes.sm),
      Text(TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.headlineSmall),
    ]);
  }
}
