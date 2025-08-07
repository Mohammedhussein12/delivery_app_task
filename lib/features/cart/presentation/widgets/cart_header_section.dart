import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartHeaderSection extends StatelessWidget {
  const CartHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: 90.h,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: ListTile(
              leading: SvgPicture.asset(
                Assets.iconsHome,
                colorFilter: ColorFilter.mode(
                  AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(
                'Mi casa',
                style: AppStyles.styleSemiBold10,
              ),
              subtitle: Text(
                'Direción de ejemplo',
                style: AppStyles.styleRegular9,
              ),
            ),
          ),
        ),
        SizedBox(width: 5.w),
        Flexible(
          flex: 1,
          child: Container(
            height: 90.h,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.lightGreyColor),
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: ListTile(
              leading: SvgPicture.asset(
                Assets.iconsHome,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
              title: Text(
                'Mi Trabajo',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleSemiBold10.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              subtitle: Text(
                'Direción de ejemplo',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.styleRegular9.copyWith(
                  color: AppColors.lightGreyColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 5.w),
        CircleAvatar(
          radius: 26.r,
          backgroundColor: AppColors.primaryColor,
          child: Icon(
            Icons.add,
            color: AppColors.whiteColor,
            size: 30.sp,
          ),
        ),
      ],
    );
  }
}
