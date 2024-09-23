import 'package:app_flutter_gps/core/constants/variables.dart';
import 'package:app_flutter_gps/presentation/views/home/components/list_categories.dart';
import 'package:app_flutter_gps/presentation/widget/home/categories/category_button.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
              categories.length,
              (index) => Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? paddingDefault : paddingDefault / 2,
                      right:
                          index == categories.length - 1 ? paddingDefault : 0),
                  child: CategoryButton(
                    category: categories[index].name,
                    imageUrl: categories[index].image,
                    isSelected: index == 0,
                    onPressed: () {
                      if (categories[index].route != null) {
                        Navigator.pushNamed(context, categories[index].route!);
                      }
                    },
                  )))
        ],
      ),
    );
  }
}
