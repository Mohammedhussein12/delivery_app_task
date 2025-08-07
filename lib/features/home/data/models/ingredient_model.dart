import 'package:delivery_app_task/generated/assets.dart';

class IngredientModel {
  final String name;
  final String image;

  const IngredientModel({
    required this.name,
    required this.image,
  });
  static List<IngredientModel> ingredients = [
    const IngredientModel(
      name: 'Arrachera',
      image: Assets.imagesArrachera,
    ),
    const IngredientModel(
      name: 'Pan ajonjoli',
      image: Assets.imagesPanAjonjoli,
    ),
    const IngredientModel(
      name: 'Lechuga',
      image: Assets.imagesLechuga,
    ),
    const IngredientModel(
      name: 'Cebolla',
      image: Assets.imagesCebolla,
    ),
  ];
}
