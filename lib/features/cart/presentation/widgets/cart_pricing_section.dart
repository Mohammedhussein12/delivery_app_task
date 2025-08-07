import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPricingSection extends StatelessWidget {
  const CartPricingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteGreyColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40.w,
              vertical: 20.h,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SubTotal:',
                        style: AppStyles.styleRegular12.copyWith(
                          color: AppColors.deepRoyalBlueColor,
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        'Envio:',
                        style: AppStyles.styleRegular12.copyWith(
                          color: AppColors.deepRoyalBlueColor,
                        ),
                      ),
                      SizedBox(height: 9.h),
                      Text(
                        'Total:',
                        style: AppStyles.styleSemiBold16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$85.00 usd',
                        style: AppStyles.styleMedium12,
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        'Gratis',
                        style: AppStyles.styleMedium12,
                      ),
                      SizedBox(height: 9.h),
                      Text(
                        '\$85.00 usd',
                        style: AppStyles.styleSemiBold16.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          CustomButton(
            onPressed: () {},
            text: 'Realizar compra',
          ),
        ],
      ),
    );
  }
}
