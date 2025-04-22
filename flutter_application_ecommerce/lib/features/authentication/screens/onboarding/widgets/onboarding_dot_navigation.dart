import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_application_ecommerce/utils/device/device_utility.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 20,
      left: 0,
      right: 0,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: Theme.of(context).colorScheme.primary,
            dotColor: Colors.grey.shade300,
            expansionFactor: 3,
          ),
        ),
      ),
    );
  }
}