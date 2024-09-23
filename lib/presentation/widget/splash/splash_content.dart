import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final bool texOnTop;
  final String image, title, description;

  const SplashContent(
      {super.key,
      this.texOnTop = false,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        if (texOnTop) SplashDescription(title: title, description: description),
        if (texOnTop) const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        if (!texOnTop)
          const SplashDescription(
              title: "Easy to Access",
              description:
                  "You can access the application from anywhere, anytime, and from any device."),
        const Spacer(),
      ],
    );
  }
}

class SplashDescription extends StatelessWidget {
  final String title, description;

  const SplashDescription(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: paddingDefault),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: paddingDefault),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
