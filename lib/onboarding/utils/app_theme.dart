import 'package:flutter/material.dart';

class AppTheme {
  static const kPrimaryColor = Color(0xFFE70F20);

  static final kPrimarySwatch = MaterialColor(kPrimaryColor.value, const {
    50: kPrimaryColor,
    100: kPrimaryColor,
    200: kPrimaryColor,
    300: kPrimaryColor,
    400: kPrimaryColor,
    500: kPrimaryColor,
    600: kPrimaryColor,
    700: kPrimaryColor,
    800: kPrimaryColor,
    900: kPrimaryColor,
  });

  static final defaultTheme = ThemeData(primarySwatch: kPrimarySwatch);
  static const lightGreyBackground = Color(0xFFF7F7F7);
  static const greyColor = Color.fromARGB(253, 67, 67, 67);
  static const barcolor = Color.fromARGB(253, 165, 165, 169);
  static const redcolor = Color.fromARGB(253, 210, 98, 109);
  //static const yellow = Color.fromRGBO(255, 181, 32, 1);
  static const grey = Color.fromARGB(251, 237, 237, 238);
  static const yellow = Color.fromARGB(255, 31, 186, 224);
  static const light = Color.fromARGB(255, 146, 212, 228);
}
