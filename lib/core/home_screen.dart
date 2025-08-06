import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:delivery_app_task/core/widgets/bottom_nav_bar_items.dart';
import 'package:delivery_app_task/core/widgets/custom_app_bar.dart';
import 'package:delivery_app_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor.withValues(alpha: 0.95),
        appBar: CustomAppBar(),
        body: Center(
          child: Text('Home Content Here'),
        ),
        bottomNavigationBar: SizedBox(
          height: 90.h,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 28.h, left: 23.w, right: 23.w),
                height: 68.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.r),
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.r,
                      offset: Offset(0, -1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildNavIcon(
                        icon: Assets.iconsHome,
                        index: 0,
                        currentIndex: currentIndex,
                        onTap: () => setState(() => currentIndex = 0),
                      ),
                      buildNavIcon(
                        icon: Assets.iconsShop,
                        index: 1,
                        currentIndex: currentIndex,
                        onTap: () => setState(() => currentIndex = 1),
                      ),
                      SizedBox(width: 55.w),
                      buildNavIcon(
                        icon: Assets.iconsNonSelectedFavourite,
                        index: 2,
                        currentIndex: currentIndex,
                        onTap: () => setState(() => currentIndex = 2),
                      ),
                      buildProfileIcon(
                        index: 3,
                        currentIndex: currentIndex,
                        onTap: () => setState(() => currentIndex = 3),
                      ),
                    ],
                  ),
                ),
              ),
              buildCenterButton(
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
