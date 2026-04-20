import 'package:al_in_one/common/styles/widgets/appbar/appbar.dart';
import 'package:al_in_one/common/styles/widgets/appbar/tabbar.dart';
import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/search_container.dart';
import 'package:al_in_one/common/styles/widgets/layouts/grid_layout.dart';
import 'package:al_in_one/features/personalization/screens/cart/cart_menu_icon.dart';
import 'package:al_in_one/common/styles/widgets/texts/section_heading.dart';
import 'package:al_in_one/common/styles/widgets/brands/t_brandcard.dart';
import 'package:al_in_one/features/shop/screens/brand/all_brands.dart';
import 'package:al_in_one/features/shop/screens/store/widgets/category_tab.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:al_in_one/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: TAppBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              TCartCounterIcon(
                onPressed: () {},
              ),
            ],
          ),
          body: NestedScrollView(
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                      automaticallyImplyLeading: false,
                      pinned: true,
                      floating: true,
                      backgroundColor: THelperFunctions.isDarkMode(context)
                          ? TColors.black
                          : TColors.white,
                      expandedHeight: 400,
                      flexibleSpace: Padding(
                        padding: EdgeInsets.all(TSizes.defaultSpace),
                        child: ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            /// search bar
                            SizedBox(height: TSizes.spaceBtwItems),
                            TSearchContainer(
                              text: 'Search in Store',
                              showBorder: true,
                              showBackground: false,
                              padding: EdgeInsets.zero,
                            ),
                            SizedBox(
                              height: TSizes.spacedBtwSections,
                            ),

                            /// Featured Brands
                            TSectionHeading(
                              title: 'Featured Brands',
                              showActionButton: true,
                              onPressed: () => Get.to(() => AllBrandsScreen()),
                            ),
                            const SizedBox(
                              height: TSizes.spaceBtwItems / 1.5,
                            ),

                            TGridLayout(
                                itemCount: 4,
                                mainAxisExtent: 80,
                                itemBuilder: (_, index) {
                                  return TBrandCard(showBorder: false);
                                })
                          ],
                        ),
                      ),

                      /// Tabs
                      bottom: TTabBar(tabs: [
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Furniture')),
                        Tab(child: Text('Electronics')),
                        Tab(child: Text('Clothes')),
                        Tab(child: Text('Cosmetics')),
                      ])),
                ];
              },

              /// BODY
              body: TabBarView(children: [
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
                TCategoryTab(),
              ])),
        ));
  }
}
