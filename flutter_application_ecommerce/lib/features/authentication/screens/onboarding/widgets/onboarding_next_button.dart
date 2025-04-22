import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() + 20,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(16),
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: 5,
          shadowColor: Colors.black.withOpacity(0.2),
        ),
        child: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}