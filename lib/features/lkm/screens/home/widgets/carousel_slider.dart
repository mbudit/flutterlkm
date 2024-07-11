import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterlkm/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutterlkm/common/widgets/images/rounded_images.dart';
import 'package:flutterlkm/features/lkm/controllers/home_controller.dart';
import 'package:flutterlkm/utils/constants/colors.dart';
import 'package:flutterlkm/utils/constants/sizes.dart';
import 'package:get/get.dart';

class TCarouselSlider extends StatelessWidget {
  const TCarouselSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: TSizes.spaceAntaraItem),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                   TCircularContainer(
                    width: 20,
                    height: 5,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? TColors.appPrimary : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
