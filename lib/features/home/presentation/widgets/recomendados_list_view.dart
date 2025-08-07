import 'package:delivery_app_task/features/home/data/models/recomendado_model.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/recomendado_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecomendadosListView extends StatelessWidget {
  const RecomendadosListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.zero,
        scrollDirection: Axis.horizontal,
        itemCount: RecomendadoModel.recomendados.length,
        itemBuilder: (context, index) {
          return RecomendadoItem(
            recomendadoItem: RecomendadoModel.recomendados[index],
          );
        },
      ),
    );
  }
}
