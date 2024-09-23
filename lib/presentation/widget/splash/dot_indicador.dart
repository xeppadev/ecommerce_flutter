import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:flutter/material.dart';

class DotIndicador extends StatelessWidget {
  final bool isActive;
  final Color? inActiveColor, activeColor;

  const DotIndicador({
    super.key,
    this.isActive = false,
    this.inActiveColor,
    this.activeColor = primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: defaultDuration,
      height: isActive ? 12 : 5,
      width: 5,
      decoration: BoxDecoration(
        color: isActive
            ? activeColor
            : inActiveColor ?? primaryMaterialColor.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(radiusDefault)),
      ),
    );
  }
}
