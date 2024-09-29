import 'dart:ui';

import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:flutter/material.dart';

class ContainerWithBlur extends StatelessWidget {
  const ContainerWithBlur(
      {super.key,
      required this.text,
      this.height = 40,
      this.width = 40,
      this.fontSize = 18});

  final String text;
  final double height, width, fontSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(paddingDefault / 2)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: height,
          width: width,
          color: Colors.white12,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
