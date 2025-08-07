import 'package:delivery_app_task/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomSliverAppBar(
          currentIndex: 1,
        ),
      ],
    );
  }
}
