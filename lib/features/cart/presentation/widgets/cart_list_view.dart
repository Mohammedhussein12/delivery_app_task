import 'package:delivery_app_task/features/cart/data/cart_model.dart';
import 'package:delivery_app_task/features/cart/presentation/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        clipBehavior: Clip.none,
        padding: EdgeInsetsDirectional.zero,
        scrollDirection: Axis.horizontal,
        itemCount: CartModel.cartItems.length,
        itemBuilder: (context, index) {
          return CartItem(
            cartItem: CartModel.cartItems[index],
          );
        },
      ),
    );
  }
}
