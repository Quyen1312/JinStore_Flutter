import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSocialButton extends StatelessWidget {
  const AppSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppImages.google,
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
      ],
    );
  }
}