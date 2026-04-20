import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/features/personalization/screens/profile/ratings/rating_indicator.dart';
import 'package:al_in_one/features/shop/screens/products_reviews/overall_products_rating.dart';
import 'package:al_in_one/features/shop/screens/products_reviews/user_review_card.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///App bar
      appBar: const TAppBar(
        title: Text('Review & Ratings'),
        showBackArrow: true,
      ),

      /// BODY
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// Overall Product Ratings
              TOverallProductRating(),
              TRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                "12.611",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: TSizes.spacedBtwSections),

              // User Reviews List
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
