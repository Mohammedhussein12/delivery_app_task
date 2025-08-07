import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 10.h),
        height: 63.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              AppColors.primaryColor,
              AppColors.selectedItemColor,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleMedium18,
          ),
        ),
      ),
    );
  }
}
