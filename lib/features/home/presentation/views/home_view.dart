import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/features/home/data/models/category_model.dart';
import 'package:delivery_app_task/features/home/data/models/product_popular_model.dart';
import 'package:delivery_app_task/features/home/data/models/recomendado_model.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/categories_list_view.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/products_popularies_list_view.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/recomendados_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 35.h,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explorar categorias',
                      style: AppStyles.styleSemiBold16,
                    ),
                    Text(
                      'Ver todos',
                      style: AppStyles.styleRegular12,
                    ),
                  ],
                ),
                SizedBox(
                  height: 21.h,
                ),
                CategoriesListView(
                  categories: CategoryModel.categories,
                ),
                SizedBox(
                  height: 38.h,
                ),
                Text(
                  'Productos populares',
                  style: AppStyles.styleSemiBold16,
                ),
                SizedBox(
                  height: 23.h,
                ),
                ProductsPopulariesListView(
                  products: ProductPopularModel.products,
                ),
                SizedBox(
                  height: 23.h,
                ),
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  'Recomendados',
                  style: AppStyles.styleSemiBold16,
                ),
                SizedBox(
                  height: 20.h,
                ),
                RecomendadosListView(
                  recomendados: RecomendadoModel.recomendados,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
