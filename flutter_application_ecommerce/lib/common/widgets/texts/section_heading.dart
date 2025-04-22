import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';

class JSectionHeading extends StatelessWidget {
  const JSectionHeading({
    super.key,
    this.onPressed,
    this.textColor,
    this.buttonTitle = 'View all',
    required this.title,
    this.showActionButton = true,
    this.textStyle,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              title,
              style: textStyle ??
                  Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: textColor ?? AppColors.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (showActionButton)
            TextButton(
              onPressed: onPressed,
              child: Text(
                buttonTitle,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}