import 'package:flutter/material.dart';
import 'package:uleaning_app/common/utils/app_colors.dart';

BoxDecoration appBoxShadow({
  Color color = AppColors.primaryElement,
  double radius = 15,
  double sR = 1,
  double bR = 2,
  BoxBorder? border,
}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.6),
        spreadRadius: sR,
        blurRadius: bR,
        offset: const Offset(0, 1),
      )
    ],
    border: border,
  );
}

BoxDecoration appBoxDecorationTextFiled({
  Color color = AppColors.primaryBackground,
  borderColor = AppColors.primaryFourElementText,
  double radius = 15,
}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: borderColor));
}
