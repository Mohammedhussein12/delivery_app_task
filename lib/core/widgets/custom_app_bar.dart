import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/core/widgets/search_text_field.dart';
import 'package:delivery_app_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSliverAppBar extends StatelessWidget {
  final int currentIndex;

  const CustomSliverAppBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final bool isCartView = currentIndex == 2;

    return SliverAppBar(
      backgroundColor: AppColors.whiteColor,
      automaticallyImplyLeading: false,
      elevation: 4,
      expandedHeight: 100.h,
      flexibleSpace: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 10.h,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          color: AppColors.whiteColor,
          child: isCartView
              ? Center(
                  child: Text(
                    'Carrito',
                    style: AppStyles.styleSemiBold22,
                  ),
                )
              : Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.h,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.lightGreyColor.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.iconsSearch,
                              width: 13.w,
                              height: 13.w,
                            ),
                            SizedBox(width: 12.w),
                            Expanded(child: SearchTextField()),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30.w),
                    Text(
                      'Inicio',
                      style: AppStyles.styleSemiBold22,
                    ),
                    SizedBox(width: 30.w),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(Assets.iconsNotification),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(Assets.iconsPercentage),
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
