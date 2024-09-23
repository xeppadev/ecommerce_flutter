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
