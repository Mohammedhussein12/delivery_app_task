import 'package:delivery_app_task/features/home/data/models/category_model.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.zero,
        scrollDirection: Axis.horizontal,
        itemCount: CategoryModel.categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: CategoryModel.categories[index]);
        },
      ),
    );
  }
}
