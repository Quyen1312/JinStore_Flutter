import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart' as cs;
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_application_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_application_ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_application_ecommerce/features/shop/controllers/home_controller.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';
import 'package:flutter_application_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:get/get.dart';

class JPromoSlider extends StatelessWidget {
  JPromoSlider({
    super.key, 
    required this.banners,
  });

  final cs.CarouselSliderController _controller = cs.CarouselSliderController();
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        cs.CarouselSlider(
          options: cs.CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: banners.map((imageUrl) => JRoundImage(imageUrl: imageUrl)).toList(),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  AppCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i 
                        ? AppColors.primaryButtonColor 
                        : AppColors.disabledButtonColor
                  ),
              ],
            ),
          ),
        )
      ]
    );
  }
}