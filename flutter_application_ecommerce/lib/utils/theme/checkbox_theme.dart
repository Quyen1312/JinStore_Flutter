import 'package:flutter/material.dart';

class AppCheckboxTheme{
  AppCheckboxTheme._();

  static CheckboxThemeData jCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)){
        return Colors.white;
      } else {
        return Colors.black;
      }
    }),

    fillColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)){
        return Colors.purple;
      } else {
        return Colors.transparent;
      }
    }),
  );

}