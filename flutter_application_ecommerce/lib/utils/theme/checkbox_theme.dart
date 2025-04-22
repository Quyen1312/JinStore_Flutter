import 'package:flutter/material.dart';

class AppCheckboxTheme{
  AppCheckboxTheme._();

  static CheckboxThemeData jCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if (states.contains(WidgetState.selected)){
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),

    fillColor: WidgetStateProperty.resolveWith((states){
      if (states.contains(WidgetState.selected)){
        return Colors.purple;
      } else {
        return Colors.transparent;
      }
    }),
  );

}