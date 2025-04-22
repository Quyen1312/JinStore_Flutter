import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_application_ecommerce/features/shop/screens/home/home.dart';
import 'package:flutter_application_ecommerce/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FlutterEcommerce());
}

class FlutterEcommerce extends StatelessWidget {
  const FlutterEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily, 
        textTheme: GoogleFonts.interTextTheme().copyWith(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
          headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
          headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.primaryColor),
          titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textColor),
          titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.textColor),
          titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textColor),
          bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textColor),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.lightTextColor),
          bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.textColor),
          labelLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: AppColors.textColor),
          labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColors.textColor),
        ),
      ),
      home:  HomeScreen(),
    );
  }
}
