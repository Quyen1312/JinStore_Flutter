import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';

class AppSignupForm extends StatelessWidget {
  const AppSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        //Username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(labelText: AppTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(height: AppSizes.spaceBtwInputFields),
    
        //Email
        TextFormField(
          decoration: const InputDecoration(labelText: AppTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: AppSizes.spaceBtwInputFields),
    
        //Phone number
        
    
        //Password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: AppTexts.password, 
            prefixIcon: Icon(Iconsax.password_check), 
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: AppSizes.SpaceBtwSection),

        //Terms and Policy checkbox
        AppTermsAndConditionCheckbox(),
        const SizedBox(height: AppSizes.SpaceBtwSection),
    
        //Sign up Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            onPressed: (){},
            child: const Text(AppTexts.createAccount)),)
      ],
    ),
    );
  }
}

