import 'package:delivery_app_task/core/utils/app_styles.dart';
import 'package:delivery_app_task/features/search/presentation/screens/search_screen.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        showSearch(context: context, delegate: SearchScreen());
      },
      style: AppStyles.styleRegular10,
      decoration: InputDecoration(
        isCollapsed: true,
        hintText: 'Buscar',
        hintStyle: AppStyles.styleRegular10,
        border: InputBorder.none,
      ),
    );
  }
}
