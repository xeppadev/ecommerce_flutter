import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:app_flutter_gps/core/theme/appbar_theme.dart';
import 'package:app_flutter_gps/core/theme/button_theme.dart';
import 'package:app_flutter_gps/core/theme/input_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Nunito',
        primaryColor: primaryColor,
        primarySwatch: primaryMaterialColor,
        scaffoldBackgroundColor: whiteColor,
        iconTheme: const IconThemeData(color: blackColor),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: blackColor40,
          ),
        ),
        appBarTheme: appBarThemeligth,
        scrollbarTheme: scrollbarThemeData,
        elevatedButtonTheme: elevatedButtonThemeData,
        textButtonTheme: textButtonThemeData,
        navigationBarTheme: navigationBarThemeData,
        inputDecorationTheme: lightInputDecorationTheme
        //Falta  outlinedButtonTheme, inputDecorationTheme, checkboxTheme, dataTableTheme
        );
  }
}
