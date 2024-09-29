import 'package:app_flutter_gps/presentation/widget/home/banner/banner_counter.dart';
import 'package:flutter/material.dart';

class OfferFlash extends StatelessWidget {
  const OfferFlash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BannerCounter(
          duration: const Duration(hours: 5),
          text: "Flash Sale 50% Off \nAll Items",
          onTap: () {},
        )
      ],
    );
  }
}
