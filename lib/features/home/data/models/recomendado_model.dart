import 'package:delivery_app_task/generated/assets.dart';

class RecomendadoModel {
  final String type;
  final String image;
  final String title;
  final String subtitle;
  final String price;
  bool isFavorite;

  RecomendadoModel({
    required this.type,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    this.isFavorite = false,
  });

  static List<RecomendadoModel> recomendados = [
    RecomendadoModel(
      type: 'Naturales',
      image: Assets.imagesMalteadasTropicales1,
      title: 'Malteadas tropicales',
      subtitle: 'Elaborado con jugos naturales',
      price: '\$12.58',
    ),
    RecomendadoModel(
      type: 'Naturales',
      image: Assets.imagesMalteadasTropicales2,
      title: 'Malteadas tropicales',
      subtitle: 'Salsa clásica de la casa',
      price: '\$20.58',
    ),
  ];
}
