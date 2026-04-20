import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/features/personalization/screens/cart/cart_menu_icon.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey)),
          Text(TTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.white)),
        ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
          counterBgcolor: TColors.black,
          counterTextColor: TColors.white,
        )
      ],
    );
  }
}
