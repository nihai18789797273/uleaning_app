import 'package:flutter/material.dart';

import '../../common/widgets/app_shadow.dart';
import '../../common/widgets/text_widgets.dart';

Widget appOnbordingPage(
  PageController controller, {
  String imagPath = "assets/images/reading.png",
  String title = "",
  String subTitle = "",
  int index = 1,
}) {
  return Column(
    children: [
      Image.asset(
        imagPath,
        fit: BoxFit.fitWidth,
      ),
      Container(
          margin: const EdgeInsets.only(top: 15),
          child: text24Normal(text: title)),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(
        index,
        controller,
      ),
    ],
  );
}

Widget _nextButton(
  int index,
  PageController controller,
) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      decoration: appBoxShadow(),
      child: Center(
        child: text16Normal(
          text: 'next',
          color: Colors.white,
        ),
      ),
    ),
  );
}
