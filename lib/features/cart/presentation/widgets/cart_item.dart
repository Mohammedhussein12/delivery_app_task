import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/features/cart/data/cart_model.dart';
import 'package:delivery_app_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItem extends StatefulWidget {
  final CartModel cartItem;

  const CartItem({
    super.key,
    required this.cartItem,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      margin: EdgeInsetsDirectional.only(end: 31.w),
      width: 236.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: AppColors.whiteColor, blurRadius: 0),
        ],
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -10.h,
            right: -20.w,
            child: CircleAvatar(
              backgroundColor: AppColors.redColor,
              child: SvgPicture.asset(
                Assets.iconsDelete,
                colorFilter: ColorFilter.mode(
                  AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 31.h,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    widget.cartItem.image,
                  ),
                  radius: 60.r,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                widget.cartItem.name,
                style: AppStyles.styleSemiBold19,
              ),
              Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                widget.cartItem.description,
                style: AppStyles.styleLight10.copyWith(fontSize: 9.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (quantity > 0) {
                            quantity--;
                            widget.cartItem.quantity = quantity;
                            setState(() {});
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(4.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: AppColors.lightGreyColor.withValues(
                              alpha: 0.3,
                            ),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 20.sp,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Text(
                        widget.cartItem.quantity.toString(),
                        style: AppStyles.styleMedium12.copyWith(
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          quantity++;
                          widget.cartItem.quantity = quantity;
                          setState(() {});
                        },
                        child: Container(
                          padding: EdgeInsets.all(4.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.r),
                            color: AppColors.primaryColor,
                          ),
                          child: Icon(
                            Icons.add,
                            size: 20.sp,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$${widget.cartItem.quantity * widget.cartItem.price}",
                    style: AppStyles.styleSemiBold19.copyWith(
                      color: AppColors.selectedItemColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
