import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_application_ecommerce/common/widgets/login_signup/social_button.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';
import 'package:get/get.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: AppSizes.SpaceBtwSection),

              //form
              AppSignupForm(),

              //divider
             const SizedBox(height: AppSizes.SpaceBtwSection),
              AppFormDivider(dividerText: AppTexts.orSignUpWith.capitalize!),
              const SizedBox(height: AppSizes.spaceBtwItems),

              //social button
              const AppSocialButton(),
              const SizedBox(height: AppSizes.SpaceBtwSection),
            ],
          ),
          ),



      ),
    );
  }
}

