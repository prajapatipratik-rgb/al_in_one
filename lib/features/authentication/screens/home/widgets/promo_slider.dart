import 'package:al_in_one/common/styles/widgets/custom_shapes/containers/circular_container.dart';
import 'package:al_in_one/common/styles/widgets/images/t_rounded_image.dart';
import 'package:al_in_one/features/shop/controllers/home_controller.dart';
import 'package:al_in_one/utils/constants/colors.dart';
import 'package:al_in_one/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
            items: banners.map((url) => TRoundedImages(imageUrl: url)).toList(),
            options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) =>
                    controller.updatePageIndicator(index))),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primaryColor
                        : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
