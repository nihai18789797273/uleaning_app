import 'package:flutter/material.dart';
import 'package:uleaning_app/common/widgets/text_widgets.dart';

import '../utils/app_colors.dart';
import 'app_shadow.dart';
import 'image_widgets.dart';

Widget appTextFeild({
  String text = "",
  String iconName = "",
  String hintText = "Type in you world",
  bool obscureText = false,
  Function(String)? onChange,
}) {
  return Container(
    padding: const EdgeInsets.only(left: 25, right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 50,
          width: 325,
          decoration: appBoxDecorationTextFiled(),
          child: Row(
            children: [
              // for showing icons
              Container(
                margin: const EdgeInsets.only(left: 17),
                child: appImage(
                  imagePath: iconName,
                ),
              ),
              // textfield
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: 280,
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(
                        color: AppColors.primaryThirdElementText),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  onChanged: onChange,
                  maxLines: 1,
                  autofocus: false,
                  // 是否隐藏正在编辑的文本
                  obscureText: obscureText,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
