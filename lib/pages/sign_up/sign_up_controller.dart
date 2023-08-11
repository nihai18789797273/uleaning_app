import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uleaning_app/common/widgets/popup_messages.dart';
import 'package:uleaning_app/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
  late WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp() async {
    var state = ref.read(registerNotifierProvider);

    final name = state.userName;
    final email = state.email;
    final password = state.password;
    final rePassword = state.rePassword;

    if (state.userName.isEmpty || name.isEmpty) {
      toastInfo("Your name is empty");
      return;
    }

    if (state.userName.length < 6 || name.length < 6) {
      toastInfo("Your name is too short");
      return;
    }

    if (state.email.isEmpty || email.isEmpty) {
      toastInfo("Your email is empty");
      return;
    }
    if (state.password.isEmpty || password.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }
    if (state.rePassword.isEmpty || rePassword.isEmpty) {
      toastInfo("Your rePassword is empty");
      return;
    }

    if (state.password.isEmpty ||
        state.rePassword.isEmpty ||
        password.isEmpty ||
        rePassword.isEmpty) {
      toastInfo("Your password is empty");
      return;
    }

    if (state.password != state.rePassword || password != rePassword) {
      toastInfo("Your password did not match");
      return;
    }

    try {
      final context = Navigator.of(ref.context);

      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (kDebugMode) {
        print(credential);
      }

      if (credential.user != null) {
        // 登录成功后逻辑
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);
        // get server photo url
        // set user phono url
        toastInfo(
            "Asn email has been to verify your account. Please open that email and confirm your identity");
        // 销毁当前页面
        context.pop();
      }
    } catch (e) {}
  }
}
