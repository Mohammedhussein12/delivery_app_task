import 'package:delivery_app_task/generated/assets.dart';

class ProductPopularModel {
  final String image;
  final String title;
  final String subtitle;
  final String price;
  bool isFavorite;

  ProductPopularModel({
    required this.image,
    required this.title,
    required this.price,
    required this.subtitle,
    this.isFavorite = false,
  });

  static List<ProductPopularModel> products = [
    ProductPopularModel(
      image: Assets.imagesPizzaClasica,
      title: 'Pizza Clásica',
      subtitle: 'Salsa clásica de la casa',
      price: '\$12.58',
    ),
    ProductPopularModel(
      image: Assets.imagesHamburguesaMix,
      title: 'Hamburguesa mix',
      subtitle: 'Doble carne con queso',
      price: '\$12.58',
      isFavorite: false,
    ),
    ProductPopularModel(
      image: Assets.imagesPizzaClasica,
      title: 'Pizza Clásica',
      subtitle: 'Salsa clásica de la casa',
      price: '\$12.58',
    ),
  ];
}
