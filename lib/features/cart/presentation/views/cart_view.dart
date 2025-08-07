import 'package:delivery_app_task/core/widgets/custom_app_bar.dart';
import 'package:delivery_app_task/features/cart/presentation/widgets/cart_header_section.dart';
import 'package:delivery_app_task/features/cart/presentation/widgets/cart_list_view.dart';
import 'package:delivery_app_task/features/cart/presentation/widgets/cart_pricing_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartView extends StatelessWidget {
  static const routeName = '/cartView';

  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          currentIndex: 2,
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 32.h),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                CartHeaderSection(),
                SizedBox(height: 49.h),
                CartListView(),
                SizedBox(height: 24.h),
                CartPricingSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
