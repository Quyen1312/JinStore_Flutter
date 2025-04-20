import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_application_ecommerce/utils/device/device_utility.dart';

class OnboardingDotNavigation extends StatelessWidget{
  const OnboardingDotNavigation({
    super.key
  });

  @override
  Widget build(BuildContext context){
    final controller = OnboardingController.instance;

    return Positioned(
          bottom: AppDeviceUtils.getBottomNavigationBarHeight() -20,
          left: AppSizes.defaultSpace,
          child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3),
          );
  }
}
