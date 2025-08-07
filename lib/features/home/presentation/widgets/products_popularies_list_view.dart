import 'package:delivery_app_task/features/home/data/models/product_popular_model.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/product_popular_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsPopulariesListView extends StatelessWidget {
  const ProductsPopulariesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.zero,
        scrollDirection: Axis.horizontal,
        itemCount: ProductPopularModel.products.length,
        itemBuilder: (context, index) {
          return ProductPopularItem(
            productPopularItem: ProductPopularModel.products[index],
          );
        },
      ),
    );
  }
}
