import 'package:delivery_app_task/features/home/data/models/category_model.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryModel> categories;

  const CategoriesListView({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.zero,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
      ),
    );
  }
}
