import 'dart:async';

import 'package:app_flutter_gps/core/components/container_with_blur.dart';
import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/widget/home/banner/banner_m.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BannerCounter extends StatefulWidget {
  const BannerCounter(
      {super.key,
      this.imageUrl = "https://i.imgur.com/pRgcbpS.png",
      required this.text,
      required this.duration,
      required this.onTap});

  final String imageUrl, text;
  final Duration duration;
  final VoidCallback onTap;
  @override
  State<BannerCounter> createState() => _BannerCounterState();
}

class _BannerCounterState extends State<BannerCounter> {
  late Duration _duration;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _duration = widget.duration;
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _duration = Duration(seconds: _duration.inSeconds - 1);
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BannerM(
      url: widget.imageUrl,
      onPressed: widget.onTap,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContainerWithBlur(
                  text: _duration.inHours.toString().padLeft(2, '0'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: paddingDefault / 4),
                  child: SvgPicture.asset("assets/icons/dot.svg"),
                ),
                ContainerWithBlur(
                  text: (_duration.inMinutes % 60).toString().padLeft(2, '0'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: paddingDefault / 4),
                  child: SvgPicture.asset("assets/icons/dot.svg"),
                ),
                ContainerWithBlur(
                  text: (_duration.inSeconds % 60).toString().padLeft(2, '0'),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
