import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/features/home/data/models/product_popular_model.dart';
import 'package:delivery_app_task/features/home/presentation/views/product_details_view.dart';
import 'package:delivery_app_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProductPopularItem extends StatefulWidget {
  final ProductPopularModel productPopularItem;

  const ProductPopularItem({super.key, required this.productPopularItem});

  @override
  State<ProductPopularItem> createState() => _ProductPopularItemState();
}

class _ProductPopularItemState extends State<ProductPopularItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ProductDetailsView.routeName);
      },
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 10.w),
        width: 174.w,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightGreyColor.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.productPopularItem.isFavorite =
                              !widget.productPopularItem.isFavorite;
                        });
                      },
                      child: SvgPicture.asset(
                        widget.productPopularItem.isFavorite
                            ? Assets.iconsSelectedFavourite
                            : Assets.iconsNonSelectedFavourite,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.h),
              SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    height: 130.h,
                    widget.productPopularItem.image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                widget.productPopularItem.title,
                style: AppStyles.styleRegular12,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 2.h),
              Text(
                widget.productPopularItem.subtitle,
                style: AppStyles.styleLight7,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.productPopularItem.price,
                    style: AppStyles.styleSemiBold14,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withValues(alpha: 0.08),
                      radius: 20.r,
                      child: SvgPicture.asset(
                        Assets.iconsArrowBack,
                        width: 10.w,
                      ),
                    ),
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
