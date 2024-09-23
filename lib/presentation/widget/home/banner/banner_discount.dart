import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BannerDiscount extends StatelessWidget {
  const BannerDiscount(
      {super.key,
      this.width = 36,
      this.height = 60,
      required this.discount,
      this.fontSize = 12});

  final double width, height;
  final int discount;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/Discount_banner.svg',
            fit: BoxFit.fill,
            colorFilter:
                const ColorFilter.mode(Colors.white70, BlendMode.srcIn),
          ),
          Text(
            '$discount%\noff',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: fontSize,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
