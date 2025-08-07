import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/core/widgets/custom_button.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/ingredients_list_view.dart';
import 'package:delivery_app_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsView extends StatefulWidget {
  static const routeName = '/productDetails';

  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100.r),
                    ),
                    child: Image.asset(
                      Assets.imagesBurger2,
                      height: 340.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios_outlined,
                            color: AppColors.whiteColor,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(width: 30.w),
                        Text(
                          "Hamburguesa especial",
                          style: AppStyles.styleSemiBold16.copyWith(
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 320.h,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.r),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 0.h),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Descripción",
                              style: AppStyles.styleSemiBold16,
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur sadipscing elitr, sed diam "
                              "nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam "
                              "erat, sed diam voluptua. At vero eos et accusam et justo duo dolores",
                              style: AppStyles.styleLight11,
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Ingredientes",
                                  style: AppStyles.styleSemiBold16,
                                ),
                                Text(
                                  "10 ingredientes",
                                  style: AppStyles.styleLight10,
                                ),
                              ],
                            ),
                            SizedBox(height: 18.h),
                            IngredientsListView(),
                            Divider(
                              color: AppColors.lightGreyColor.withValues(
                                alpha: 0.1,
                              ),
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomButton(
                                  text: "Ordenar ahora",
                                  onPressed: () {},
                                ),
                                Text(
                                  "\$12.58",
                                  style: AppStyles.styleSemiBold30,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 280.h,
                    right: 40.w,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: isFavorite
                            ? AppColors.redColor
                            : AppColors.lightGreyColor,
                        radius: 30.r,
                        child: Icon(
                          Icons.favorite,
                          color: isFavorite
                              ? AppColors.whiteColor
                              : AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
