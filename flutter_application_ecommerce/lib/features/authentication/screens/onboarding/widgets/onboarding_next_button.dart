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
      bottom: AppDeviceUtils.getBottomNavigationBarHeight() - 20,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        child: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,),
      ),
    );
  }
}
