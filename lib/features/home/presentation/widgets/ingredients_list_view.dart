import 'package:delivery_app_task/features/home/data/models/ingredient_model.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/ingredient_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IngredientsListView extends StatelessWidget {
  const IngredientsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 151.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.zero,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: IngredientModel.ingredients.length,
        itemBuilder: (context, index) {
          return IngredientItem(ingredient: IngredientModel.ingredients[index]);
        },
      ),
    );
  }
}
