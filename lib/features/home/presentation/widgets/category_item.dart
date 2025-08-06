import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/features/home/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.symmetric(
            horizontal: 8.w,
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          width: 64.w,
          height: 64.h,
          decoration: BoxDecoration(
            color: category.color,
            borderRadius: BorderRadius.circular(14.r),
          ),
          child: Image.asset(
            height: 19.h,
            width: 23.w,
            category.image,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          category.name,
          style: AppStyles.styleMedium12,
        ),
      ],
    );
  }
}
