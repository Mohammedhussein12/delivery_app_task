import 'package:delivery_app_task/features/home/data/models/recomendado_model.dart';
import 'package:delivery_app_task/features/home/presentation/widgets/recomendado_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecomendadosListView extends StatelessWidget {
  final List<RecomendadoModel> recomendados;

  const RecomendadosListView({
    super.key,
    required this.recomendados,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.builder(
        padding: EdgeInsetsDirectional.zero,
        scrollDirection: Axis.horizontal,
        itemCount: recomendados.length,
        itemBuilder: (context, index) {
          return RecomendadoItem(
            recomendadoItem: recomendados[index],
          );
        },
      ),
    );
  }
}
