import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/widget/home/categories_list.dart';
import 'package:app_flutter_gps/presentation/widget/home/banner/offers_carrousel.dart';
import 'package:flutter/material.dart';

class Offerscarouselandcategories extends StatelessWidget {
  const Offerscarouselandcategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const OffersCarrousel(),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(paddingDefault),
          child:
              Text('Categories', style: Theme.of(context).textTheme.titleSmall),
        ),
        const CategoriesList(),
      ],
    );
  }
}
