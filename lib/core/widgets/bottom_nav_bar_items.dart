import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget buildNavIcon({
  required String icon,
  required int index,
  required int currentIndex,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: SvgPicture.asset(
      icon,
      width: 24.w,
      height: 24.h,
      colorFilter: ColorFilter.mode(
        currentIndex == index
            ? AppColors.selectedItemColor
            : AppColors.unSelectedItemColor,
        BlendMode.srcIn,
      ),
    ),
  );
}

Widget buildCenterButton({
  required VoidCallback onTap,
  required int index,
  required int currentIndex,
}) {
  return GestureDetector(
    onTap: onTap,
    child: SizedBox(
      width: 100.w,
      height: 100.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -10.h,
            child: Container(
              width: 90.w,
              height: 90.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightGreyColor.withValues(alpha: 0.05),
              ),
            ),
          ),
          Container(
            width: 54.w,
            height: 54.w,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor.withValues(alpha: 0.3),
                  blurRadius: 8.r,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                Assets.iconsBasket,
                width: 20.w,
                height: 20.h,
                colorFilter: ColorFilter.mode(
                  AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildProfileIcon({
  required int index,
  required int currentIndex,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
      radius: 18.r,
      backgroundColor: currentIndex == index
          ? AppColors.selectedItemColor
          : AppColors.lightGreyColor,
      child: Icon(
        Icons.person,
        color: AppColors.whiteColor,
        size: 20.sp,
      ),
    ),
  );
}
