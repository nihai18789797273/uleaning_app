import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uleaning_app/common/widgets/text_widgets.dart';
import 'package:uleaning_app/pages/sign_up/sign_up_controller.dart';

import '../../common/widgets/app_bar.dart';
import '../../common/widgets/app_textfields.dart';
import '../../common/widgets/button_widget.dart';
import 'notifier/register_notifier.dart';

class SiginUp extends ConsumerWidget {
  const SiginUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regProvider = ref.watch(registerNotifierProvider);
    final controller = SignUpController(ref: ref);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppbar(
            title: "Sign up",
          ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                // 其他登录方式提示
                Center(
                    child: text14Normal(
                        text: "Enter your details below & free sign up ")),
                const SizedBox(
                  height: 50,
                ),
                // 用户名输入框
                Center(
                  child: appTextFeild(
                    text: "User name",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your user name",
                    onChange: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onUserNameChange(value),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // 邮箱输入框
                Center(
                  child: appTextFeild(
                    text: "Email",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your email address",
                    onChange: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onEmailChange(value),
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
                    onChange: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onPasswordChange(value),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // 确认密码输入框
                Center(
                  child: appTextFeild(
                    text: "Confirm Password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter your confirm password",
                    obscureText: true,
                    onChange: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onConfirmPasswordChange(value),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // forget text
                Center(
                  child: SizedBox(
                    width: 325,
                    child: text14Normal(
                      text:
                          "By creating an account you are agreeing out terms and conditions",
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                // login botton
                Center(
                  child: appButton(
                      buttonName: "Sign Up",
                      isLogin: true,
                      onTap: () => controller.handleSignUp()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
