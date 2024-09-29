import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:app_flutter_gps/core/constants/variables.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
  padding: const EdgeInsets.all(paddingDefault),
  backgroundColor: primaryColor,
  foregroundColor: whiteColor,
  minimumSize: const Size(double.infinity, 32),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(radiusDefault)),
  ),
));

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(
    foregroundColor: primaryColor,
  ),
);

OutlinedButtonThemeData outlinedButtonTheme(
    {Color borderColor = blackColor10}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(paddingDefault),
      minimumSize: const Size(double.infinity, 32),
      side: BorderSide(width: 1.5, color: borderColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(radiusDefault)),
      ),
    ),
  );
}
