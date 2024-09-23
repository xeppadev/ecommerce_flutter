import 'package:app_flutter_gps/core/constants/variables.dart';
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
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(paddingDefault / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(height: paddingDefault / 4),
                    Text(
                      "Product Name",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: paddingDefault / 4),
                    Text(
                      "\$ 100",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
