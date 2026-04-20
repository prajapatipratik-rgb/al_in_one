import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:al_in_one/features/personalization/screens/profile/ratings/rating_indicator.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/image_strings.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Iconsax.more_square_copy))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primaryColor),
          lessStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primaryColor),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pratik Store',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Nov, 2026',
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchase seamlessly. Great job!',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primaryColor),
                  lessStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primaryColor),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spacedBtwSections),
      ],
    );
  }
}
