import 'package:delivery_app_task/core/home_screen.dart';
import 'package:delivery_app_task/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/home/presentation/views/product_details_view.dart';

void main() {
  runApp(const DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        routes: {
          HomeView.routeName: (context) => const HomeView(),
          ProductDetailsView.routeName: (context) => const ProductDetailsView(),
        },
      ),
    );
  }
}
