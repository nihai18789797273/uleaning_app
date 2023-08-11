import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uleaning_app/common/utils/app_styles.dart';
import 'package:uleaning_app/pages/sign_in/sign_in.dart';
import 'package:uleaning_app/pages/sign_up/sign_up.dart';
import 'package:uleaning_app/pages/welcome/welcome.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.appThemeData,
      // home: WelCome(),
      initialRoute: "/",
      routes: {
        "/": (context) => WelCome(),
        "/signIn": (context) => const SiginIn(),
        "/register": (context) => const SiginUp(),
      },
    );
  }
}

final appCount = StateProvider<int>((ref) {
  return 1;
});
