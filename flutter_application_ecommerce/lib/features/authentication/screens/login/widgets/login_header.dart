import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login_header extends StatelessWidget {
  const login_header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: AppSizes.SpaceBtwSection),
        SvgPicture.asset(
          AppImages.appLogo,
          height: 120,
          width: 120,
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        Text(
          AppTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).colorScheme.primary,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSizes.sm),
        Text(
          AppTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey.shade600,
                height: 1.5,
              ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}