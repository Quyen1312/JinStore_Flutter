import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.onPressed, this.iconColor,
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: (){}, icon: Icon(Iconsax.shopping_bag, color: AppColors.backgroundColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: AppColors.textColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.backgroundColor, fontSizeFactor: 0.8),),
            ),
          ),
        )
      ],
    );
  }
}