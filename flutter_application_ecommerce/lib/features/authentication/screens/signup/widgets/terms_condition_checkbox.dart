import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';

class AppTermsAndConditionCheckbox extends StatelessWidget {
  const AppTermsAndConditionCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
          children: [
            TextSpan(text: '${AppTexts.iAgreeTo}', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${AppTexts.privacyPolicy}', style: Theme.of(context).textTheme.bodyMedium!.apply(
              decoration: TextDecoration.underline,
              ),
              ),
            TextSpan(text: '${AppTexts.and}', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${AppTexts.termsOfUse}', style: Theme.of(context).textTheme.bodyMedium!.apply(
              decoration: TextDecoration.underline,
              ),
            ),
            ]
        ))
      ],
    );
  }
}