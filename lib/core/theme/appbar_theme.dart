import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:flutter/material.dart';

const AppBarTheme appBarThemeligth = AppBarTheme(
    color: whiteColor,
    elevation: 0,
    iconTheme: IconThemeData(color: blackColor),
    titleTextStyle: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w600, color: blackColor));

ScrollbarThemeData scrollbarThemeData = ScrollbarThemeData(
  trackColor: WidgetStateProperty.all(primaryColor),
);

NavigationBarThemeData navigationBarThemeData = NavigationBarThemeData(
    backgroundColor: whiteColor,
    indicatorColor: primaryMaterialColor,
    iconTheme: const WidgetStatePropertyAll(
      IconThemeData(
        color: blackColor,
      ),
    ),
    labelTextStyle: WidgetStateProperty.all(
      const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
    ));
