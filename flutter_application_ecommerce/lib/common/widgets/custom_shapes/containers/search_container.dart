import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_application_ecommerce/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class JSearchContainer extends StatelessWidget {
  const JSearchContainer({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          border: Border.all(color: AppColors.disabledButtonColor)
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal, color: AppColors.textColor),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}