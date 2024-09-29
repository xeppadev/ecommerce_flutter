import 'package:app_flutter_gps/core/components/network_image_loader.dart';
import 'package:app_flutter_gps/core/constants/colors.dart';
import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.imageUrl,
      required this.brandName,
      required this.name,
      required this.price,
      this.discount,
      this.discountPercent,
      required this.onPressed});

  final String imageUrl, brandName, name;
  final double price;
  final double? discount;
  final int? discountPercent;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(140, 220),
        maximumSize: const Size(140, 220),
        padding: EdgeInsets.zero,
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.15,
            child: Stack(children: [
              NetworkImageLoader(
                imageUrl: imageUrl,
                radius: radiusDefault,
              ),
              if (discount != null)
                Positioned(
                  top: paddingDefault / 2,
                  right: paddingDefault / 2,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    height: 20,
                    decoration: const BoxDecoration(
                      color: errorColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(radiusDefault),
                      ),
                    ),
                    child: Text(
                      "-$discountPercent% off",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
            ]),
          ),
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: paddingDefault / 2,
                      vertical: paddingDefault / 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        brandName.toUpperCase(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 12,
                            ),
                      ),
                      const SizedBox(height: paddingDefault / 4),
                      Text(
                        name,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontSize: 12,
                            ),
                      ),
                      const Spacer(),
                      discount != null
                          ? Row(
                              children: [
                                Text("\$$discount",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                        )),
                                const SizedBox(width: paddingDefault / 4),
                                Text(
                                  "\$$price",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .color,
                                  ),
                                ),
                              ],
                            )
                          : Text(
                              "\$$price",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                    ],
                  )))
        ],
      ),
    );
  }
}
