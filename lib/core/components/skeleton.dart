import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    super.key,
    this.height,
    this.width,
    this.layer = 1,
    this.radius,
  });

  final double? height, width;
  final int layer;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(paddingDefault / 2),
      decoration: BoxDecoration(
        color: Theme.of(context).iconTheme.color!.withOpacity(0.1),
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 0)),
      ),
    );
  }
}
