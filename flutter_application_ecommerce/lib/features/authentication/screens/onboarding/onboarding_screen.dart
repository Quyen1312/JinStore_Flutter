import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:get/get.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter_application_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());



    return Scaffold(
      body: SafeArea(
        child: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
                ),
          
                OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
                ),
          
                OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
                ),
            ],
          ),
          // skip buttonbutton
          OnboardingSkip(),

          //dot navigation smoothpage indicator
          OnboardingDotNavigation(),

          //Circular Next Button
          OnBoardingNextButton()

        ],
        
        ),
      ),
    );
  }

  

  
}





