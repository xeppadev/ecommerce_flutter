import 'package:app_flutter_gps/models/category_model.dart';

List<CategoryModel> categories = [
  CategoryModel(name: "All Categories"),
  CategoryModel(
    name: "Clothing",
    image: "assets/icons/Clothing.svg",
    route: "/clothing",
  ),
  CategoryModel(
    name: "Shoes",
    image: "assets/icons/Shoes.svg",
    route: "/shoes",
  ),
  CategoryModel(
    name: "Accessories",
    image: "assets/icons/Accessories.svg",
    route: "/accessories",
  ),
  CategoryModel(
    name: "Electronics",
    image: "assets/icons/Electronics.svg",
    route: "/electronics",
  ),
];
