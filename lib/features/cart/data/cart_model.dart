import 'package:delivery_app_task/generated/assets.dart';

class CartModel {
  final String image;
  final String name;
  final String description;
  final double price;
  int quantity;

  CartModel({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    this.quantity = 0,
  });

  static List<CartModel> cartItems = [
    CartModel(
      image: Assets.imagesBigBurgerQueso1,
      name: 'Big Burger Queso',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam  nam necessitatibus nemo pariatur provident.',
      price: 20.0,
    ),
    CartModel(
      image: Assets.imagesBigBurgerQueso2,
      name: 'Big Burger Queso',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam  nam necessitatibus nemo pariatur provident.',
      price: 20.0,
    ),
  ];
}
