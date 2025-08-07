import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/features/home/data/models/ingredient_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientItem extends StatelessWidget {
  final IngredientModel ingredient;
  const IngredientItem({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Image.asset(
              ingredient.image,
              height: 104.h,
              width: 91.w,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Text(
          ingredient.name,
          style: AppStyles.styleLight10,
        ),
      ],
    );
  }
}
