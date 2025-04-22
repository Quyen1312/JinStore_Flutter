import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:flutter_application_ecommerce/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:flutter_application_ecommerce/utils/constants/text_string.dart';

class JHomeAppBar extends StatelessWidget {
  const JHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return JAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.homeAppbarTitle, // "Good day for shopping"
            style: Theme.of(context).textTheme.labelMedium!.apply(color: Colors.white70)
          ),
          Text(
            AppTexts.homeAppbarSubTitle, // "Taimoor Sikander" hoặc tên khác
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white)
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: (){}, 
          iconColor: Colors.white,
        )
      ],
    );
  }
}