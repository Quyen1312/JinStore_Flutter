import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login_header extends StatelessWidget {
  const login_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          AppImages.appLogo,
          height: 150,
        ),
          Text(AppTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: AppSizes.sm),
          Text(AppTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ]
    );
  }
}