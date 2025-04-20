import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';
import 'package:flutter_application_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSocialButton extends StatelessWidget {
  const AppSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: SvgPicture.asset(
              AppImages.google,
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
            ),
          ),
        )
      ],
    );
  }
}
