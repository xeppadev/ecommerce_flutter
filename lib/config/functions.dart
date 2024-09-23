import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

SvgPicture svgIcon(String src, BuildContext context, {Color? color}) {
  return SvgPicture.asset(
    src,
    height: 24,
    colorFilter: ColorFilter.mode(
      color ??
          Theme.of(context).iconTheme.color!.withOpacity(
              Theme.of(context).brightness == Brightness.dark ? 0.3 : 1),
      BlendMode.srcIn,
    ),
  );
}
