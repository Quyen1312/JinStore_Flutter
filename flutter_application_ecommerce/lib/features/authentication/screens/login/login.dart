import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/common/styles/spacing_styles.dart';
import 'package:flutter_application_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_application_ecommerce/common/widgets/login_signup/social_button.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primary.withOpacity(0.1),
              Colors.white,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: AppSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                /// Logo, Title & Sub-Title
                const login_header(),
                const SizedBox(height: AppSizes.SpaceBtwSection),
                /// Form
                const AppLoginForm(),
                /// Divider
                AppFormDivider(dividerText: AppTexts.orSignInWith.capitalize!),
                const SizedBox(height: AppSizes.spaceBtwItems),
                /// Social Buttons
                const AppSocialButton(),
                const SizedBox(height: AppSizes.SpaceBtwSection),
              ],
            ),
          ),
        ),
      ),
    );
  }
}