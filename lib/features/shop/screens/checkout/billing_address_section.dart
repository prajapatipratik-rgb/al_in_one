import 'package:al_in_one/common/styles/widgets/texts/section_heading.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Pratik Prajapati', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('977+ 9813982999',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
              child: Text('Madhyapur Thimi, 87695, Nepal',
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: true),
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
      ],
    );
  }
}
