import 'package:carousel_slider/carousel_slider.dart' as cs;
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_application_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_application_ecommerce/common/widgets/custom_shapes/containers/home_categories.dart';
import 'package:flutter_application_ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:flutter_application_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_application_ecommerce/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_application_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:flutter_application_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_application_ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';
import 'package:flutter_application_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final cs.CarouselSliderController _controller = cs.CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Thêm padding cho status bar
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  // Áp dụng theme cho HomeScreen + appbar
                  Theme(
                    data: Theme.of(context).copyWith(
                      appBarTheme: Theme.of(context).appBarTheme.copyWith(
                            iconTheme: const IconThemeData(color: Colors.white),
                            actionsIconTheme: const IconThemeData(color: Colors.white),
                          ),
                    ),
                    child: const JHomeAppBar(),
                  ),
                  const SizedBox(height: AppSizes.SpaceBtwSection),
                  // Thanh tìm kiếm
                  const JSearchContainer(text: 'Tìm kiếm'),
                  const SizedBox(height: AppSizes.SpaceBtwSection),
                  // Danh mục
                  JHomeCategories(),
                ],
              ),
            ),
            //body 
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: JPromoSlider(banners: [AppImages.banner1, AppImages.banner2, AppImages.banner33],),
            )

          ],
        ),
      ),
    );
  }
}

