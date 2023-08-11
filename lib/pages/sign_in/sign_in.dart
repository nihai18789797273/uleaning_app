import 'package:flutter/material.dart';
import 'package:uleaning_app/common/widgets/text_widgets.dart';
import 'package:uleaning_app/pages/sign_in/widgets/sign_in_widget.dart';

import '../../common/widgets/app_bar.dart';
import '../../common/widgets/app_textfields.dart';
import '../../common/widgets/button_widget.dart';

class SiginIn extends StatelessWidget {
  const SiginIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(
            title: "Login",
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 三种登录方式
                thirdPartyLogin(),
                // 其他登录方式提示
                Center(
                    child: text14Normal(
                        text: "Or use you email account to login")),
                const SizedBox(
                  height: 50,
                ),
                // 邮箱输入框
                Center(
                  child: appTextFeild(
                    text: "Email",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your email address",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // 密码输入框
                Center(
                  child: appTextFeild(
                    text: "Password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter your password",
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // forget text
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: textUnderline(text: "Forget password?"),
                ),
                const SizedBox(
                  height: 100,
                ),
                // login botton
                Center(
                  child: appButton(
                    buttonName: "Login",
                    isLogin: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // login botton
                Center(
                  child: appButton(
                      buttonName: "Register",
                      onTap: () => Navigator.pushNamed(context, "/register")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
