import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/widget/home/banner/banner_discount.dart';
import 'package:app_flutter_gps/presentation/widget/home/banner/banner_m.dart';
import 'package:flutter/material.dart';

class BannerStyleM2 extends StatelessWidget {
  const BannerStyleM2(
      {super.key,
      required this.title,
      required this.onPressed,
      this.image =
          "https://i.etsystatic.com/6107039/r/il/8141a1/3678563919/il_794xN.3678563919_pl0d.jpg",
      required this.discount,
      this.subtitle});

  final String title;
  final VoidCallback onPressed;
  final String? image;
  final int discount;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return BannerM(
      url: image!,
      onPressed: onPressed,
      children: [
        Padding(
          padding: const EdgeInsets.all(paddingDefault),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          height: 1),
                    ),
                    const SizedBox(height: paddingDefault / 4),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: paddingDefault),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: BannerDiscount(discount: discount),
        )
      ],
    );
  }
}
