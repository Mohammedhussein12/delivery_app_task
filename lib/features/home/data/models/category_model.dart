import 'dart:ui';

import 'package:delivery_app_task/generated/assets.dart';

class CategoryModel {
  final String name;
  final String image;
  final Color color;

  CategoryModel({
    required this.name,
    required this.image,
    required this.color,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      name: 'Tacos',
      image: Assets.imagesTacos,
      color: const Color(0xFFD0E6A5),
    ),
    CategoryModel(
      name: 'Frias',
      image: Assets.imagesFrias,
      color: const Color(0xFF86E3CE),
    ),
    CategoryModel(
      name: 'Bebidas',
      image: Assets.imagesBurger,
      color: const Color(0xFFFFDD95),
    ),
    CategoryModel(
      name: 'Pizza',
      image: Assets.imagesPizza,
      color: const Color(0xFFFFACAC),
    ),
    CategoryModel(
      name: 'Burritos',
      image: Assets.imagesBurritos,
      color: const Color(0xFFCCAAD9),
    ),
  ];
}
