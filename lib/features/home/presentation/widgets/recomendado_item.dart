import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/features/home/data/models/recomendado_model.dart';
import 'package:delivery_app_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecomendadoItem extends StatefulWidget {
  final RecomendadoModel recomendadoItem;

  const RecomendadoItem({super.key, required this.recomendadoItem});

  @override
  State<RecomendadoItem> createState() => _RecomendadoItemState();
}

class _RecomendadoItemState extends State<RecomendadoItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(end: 10.w, bottom: 12.h),
          width: 280.w,
          height: 130.h,
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
            child: Row(
              children: [
                SizedBox(
                  width: 98.w,
                  height: 160.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: -60.h,
                        left: 0,
                        child: SizedBox(
                          width: 98.w,
                          height: 160.h,
                          child: Image.asset(
                            widget.recomendadoItem.image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 9.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.recomendadoItem.type,
                        style: AppStyles.styleLight10,
                      ),
                      SizedBox(height: 13.h),
                      Text(
                        widget.recomendadoItem.title,
                        style: AppStyles.styleRegular10.copyWith(
                          color: AppColors.deepRoyalBlueColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // Subtitle
                      Text(
                        widget.recomendadoItem.subtitle,
                        style: AppStyles.styleLight7,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.recomendadoItem.price,
                            style: AppStyles.styleSemiBold14,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: Colors.grey.withValues(
                                alpha: 0.08,
                              ),
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
              ],
            ),
          ),
        ),
        Positioned(
          top: 8.h,
          right: 18.w,
          child: GestureDetector(
            onTap: () {
              setState(() {
                widget.recomendadoItem.isFavorite =
                    !widget.recomendadoItem.isFavorite;
              });
            },
            child: Container(
              padding: EdgeInsets.all(4.w),
              child: Icon(
                widget.recomendadoItem.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: widget.recomendadoItem.isFavorite
                    ? Colors.red
                    : Colors.grey,
                size: 20.w,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
