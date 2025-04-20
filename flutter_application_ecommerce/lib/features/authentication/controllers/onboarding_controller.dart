import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/login/login.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// Variables
  late final PageController pageController;
  Rx<int> currentPageIndex = 0.obs;

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  /// Update page index when page scrolls
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to specific page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index); // corrected
  }

  /// Go to next page or navigate to LoginScreen
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  /// Skip to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
