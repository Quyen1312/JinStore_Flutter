import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';

class AppFormDivider extends StatelessWidget {
  const AppFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: Colors.grey.shade300,
            thickness: 1,
            indent: AppSizes.defaultSpace,
            endIndent: AppSizes.sm,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
        ),
        Flexible(
          child: Divider(
            color: Colors.grey.shade300,
            thickness: 1,
            indent: AppSizes.sm,
            endIndent: AppSizes.defaultSpace,
          ),
        ),
      ],
    );
  }
}