class ProductModel {
  final String name, brandName, imageUrl;
  final double price;
  final double? discount;
  final int? discountPercent;

  ProductModel({
    required this.name,
    required this.brandName,
    required this.imageUrl,
    required this.price,
    this.discount,
    this.discountPercent,
  });
}
