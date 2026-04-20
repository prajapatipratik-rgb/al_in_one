import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/device/device_utility.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  // if you want to add background color to tabs you have to wrap them in material widget
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: TColors.primaryColor,
        labelColor: dark ? TColors.white : TColors.primaryColor,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
