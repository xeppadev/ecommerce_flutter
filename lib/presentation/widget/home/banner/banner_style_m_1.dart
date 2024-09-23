import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/widget/home/banner/banner_m.dart';
import 'package:flutter/material.dart';

class BannerStyleM1 extends StatelessWidget {
  const BannerStyleM1(
      {super.key,
      this.image =
          "https://i.etsystatic.com/5753178/r/il/57a538/6298353439/il_794xN.6298353439_hf41.jpg",
      required this.title,
      required this.onPressed});

  final String? image;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BannerM(url: image!, onPressed: onPressed, children: [
      Padding(
          padding: const EdgeInsets.all(paddingDefault),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                "Shop now",
                style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 64,
                child: Divider(
                  color: whiteColor,
                  thickness: 2,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ))
    ]);
  }
}
