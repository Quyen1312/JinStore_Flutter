import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/utils/constants/sizes.dart';

class JAppbarTheme {
  JAppbarTheme._();

  static const homeAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.white, size: AppSizes.iconMd),
    actionsIconTheme: IconThemeData(color: Colors.white, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
  );
}