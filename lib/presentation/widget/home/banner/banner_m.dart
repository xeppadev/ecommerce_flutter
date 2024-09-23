import 'package:app_flutter_gps/core/components/network_image_loader.dart';
import 'package:flutter/material.dart';

class BannerM extends StatelessWidget {
  const BannerM(
      {super.key,
      required this.url,
      required this.onPressed,
      required this.children});

  final String url;
  final VoidCallback onPressed;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: GestureDetector(
          onTap: onPressed,
          child: Stack(
            children: [
              NetworkImageLoader(imageUrl: url, radius: 0),
              Container(color: Colors.black45),
              ...children,
            ],
          )),
    );
  }
}
