import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/views/home/components/list_products.dart';
import 'package:app_flutter_gps/presentation/widget/home/products/product_card.dart';
import 'package:flutter/material.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: paddingDefault / 2),
        Padding(
          padding: const EdgeInsets.all(paddingDefault),
          child: Text(
            "Popular Products",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
            height: 210,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularProducts.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  left: paddingDefault,
                  right:
                      index == popularProducts.length - 1 ? paddingDefault : 0,
                ),
                child: ProductCard(
                  imageUrl: popularProducts[index].imageUrl,
                  brandName: popularProducts[index].brandName,
                  name: popularProducts[index].name,
                  price: popularProducts[index].price,
                  discount: popularProducts[index].discount,
                  discountPercent: popularProducts[index].discountPercent,
                  onPressed: () {},
                ),
              ),
            )),
      ],
    );
  }
}
