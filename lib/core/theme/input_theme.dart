import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:flutter/material.dart';

OutlineInputBorder secondaryOutlineInputBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(radiusDefault * 2)),
    borderSide: BorderSide(
      color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3),
    ),
  );
}

const InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  fillColor: lightGreyColor,
  filled: true,
  hintStyle: TextStyle(color: greyColor),
  border: outlineInputBorder,
  enabledBorder: outlineInputBorder,
  focusedBorder: focusedOutlineInputBorder,
  errorBorder: errorOutlineInputBorder,
);

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(radiusDefault * 2)),
  borderSide: BorderSide(
    color: Colors.transparent,
  ),
);

const OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(radiusDefault * 2)),
  borderSide: BorderSide(color: primaryColor),
);

const OutlineInputBorder errorOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(radiusDefault * 2)),
  borderSide: BorderSide(
    color: errorColor,
  ),
);
