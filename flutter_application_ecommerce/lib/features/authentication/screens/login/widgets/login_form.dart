import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:flutter_application_ecommerce/navigation_menu.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSizes.SpaceBtwSection),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.direct_right),
                labelText: AppTexts.email,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            // Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: AppTexts.password,
                suffixIcon: const Icon(Iconsax.eye_slash),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey.shade50,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwInputFields),
            // Remember me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: Theme.of(context).colorScheme.primary,
                    ),
                    const Text(AppTexts.rememberMe),
                  ],
                ),
                // Forget password
                TextButton(
                  onPressed: () {},
                  child: Text(
                    AppTexts.forgetPassword,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.SpaceBtwSection),
            // Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                ),
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text(AppTexts.signIn),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: BorderSide(color: Theme.of(context).colorScheme.primary),
                ),
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text(
                  AppTexts.createAccount,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}