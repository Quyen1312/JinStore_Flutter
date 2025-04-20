import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';
import 'package:flutter_application_ecommerce/utils/constants/helper_functions.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                color: AppColors.border, // Màu viền
                width: 3, // Độ dày của viền
              ),
              borderRadius: BorderRadius.circular(10), // Bo góc viền
            ),
              child: Image(
                width: AppHelperFunctions.screenWidth() * 0.7, 
                height: AppHelperFunctions.screenHeight() * 0.6, 
                image: AssetImage(image),
                fit: BoxFit.fill,
            ),
          ),
            const SizedBox(height: AppSizes.SpaceBtwSection), // Sử dụng spaceBtwSections thay vì SpaceBtwSection
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700, // Giảm độ đậm một chút từ bold sang w700
                    letterSpacing: 0.5, // Thêm khoảng cách chữ cho đẹp hơn
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w400, // Không in đậm, sử dụng weight bình thường
                    color: Colors.grey.shade600, // Thêm màu xám nhẹ cho tinh tế
                    letterSpacing: 0.2, // Thêm khoảng cách chữ nhẹ
                  ),
              textAlign: TextAlign.center,
              maxLines: 2, // Giới hạn 2 dòng nếu text dài
            ),
          ],
        ),
      ),
    );
  }
}