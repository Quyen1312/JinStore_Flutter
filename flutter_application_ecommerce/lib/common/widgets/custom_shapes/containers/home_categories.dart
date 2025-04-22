import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class JHomeCategories extends StatelessWidget {
  const JHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: AppSizes.defaultPadding,
        top: AppSizes.defaultPadding,
        bottom: AppSizes.defaultPadding,
      ),
      color: Theme.of(context).colorScheme.primary.withOpacity(0.9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Heading
          const JSectionHeading(
            title: 'Danh mục nổi bật',
            showActionButton: false,
            textColor: Colors.white,
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          // Categories
          SizedBox(
            height: 90,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final icons = [
                  Icons.local_dining,   // Ngũ cốc
                  Iconsax.cake,         // Hạt thông
                  Icons.restaurant,     // Khoai tây
                  Icons.local_florist,  // Rau củ
                  Icons.fastfood,       // Thực phẩm
                  Iconsax.cake,         // Đồ ăn vặt
                ];
                final labels = [
                  'Ngũ cốc',
                  'Hạt thông',
                  'Khoai tây',
                  'Rau củ',
                  'Thực phẩm',
                  'Đồ ăn vặt',
                ];
                return Padding(
                  padding: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
                  child: Column(
                    children: [
                      // Circular icon
                      Container(
                        width: 60,
                        height: 60,
                        padding: const EdgeInsets.all(AppSizes.sm),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Icon(
                            icons[index],
                            size: 36,
                            color: Colors.amberAccent,
                          ),
                        ),
                      ),
                      // Text
                      const SizedBox(height: AppSizes.spaceBtwItems / 2),
                      SizedBox(
                        width: 70,
                        child: Text(
                          labels[index],
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}