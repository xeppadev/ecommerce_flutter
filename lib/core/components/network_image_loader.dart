import 'package:app_flutter_gps/core/components/skeleton.dart';
import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NetworkImageLoader extends StatelessWidget {
  const NetworkImageLoader({
    super.key,
    this.fit = BoxFit.cover,
    required this.imageUrl,
    this.radius = paddingDefault,
  });

  final BoxFit fit;
  final String imageUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: fit,
        placeholder: (context, url) => const Skeleton(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: fit,
            ),
          ),
        ),
      ),
    );
  }
}
