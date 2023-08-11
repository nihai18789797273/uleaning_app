import 'package:flutter/material.dart';
import 'package:uleaning_app/common/utils/app_colors.dart';
import 'package:uleaning_app/common/widgets/app_shadow.dart';
import 'package:uleaning_app/common/widgets/text_widgets.dart';

Widget appButton({
  double width = 325,
  double height = 50,
  String buttonName = "",
  bool isLogin = false,
  Function()? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 325,
      height: 50,
      decoration: appBoxShadow(
          color:
              isLogin ? AppColors.primaryElement : AppColors.primaryBackground,
          border: Border.all(
            color: AppColors.primaryFourElementText,
          )),
      child: Center(
        child: text16Normal(
          color: isLogin ? AppColors.primaryBackground : AppColors.primaryText,
          text: buttonName,
        ),
      ),
    ),
  );
}
