import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uleaning_app/pages/welcome/widgets.dart';

import 'notifier/welcome_notifier.dart';

class WelCome extends ConsumerWidget {
  WelCome({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            margin: const EdgeInsets.only(top: 30),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                // showing our three welcome pages
                PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value) {
                    // 修改数据
                    ref.read(indexDotProvider.notifier).changeValue(value);
                  },
                  children: [
                    // First Page
                    appOnbordingPage(
                      context,
                      _controller,
                      imagPath: 'assets/images/reading.png',
                      title: 'First see Learning',
                      subTitle:
                          'Forget about of paper all knowladge in one learning',
                      index: 1,
                    ),
                    // Second Page
                    appOnbordingPage(
                      context,
                      _controller,
                      imagPath: 'assets/images/man.png',
                      title: 'Connect With Everyone',
                      subTitle:
                          "Alaways keep in touch with your tutor and friends. Let's get connected",
                      index: 2,
                    ),
                    // Third Page
                    appOnbordingPage(
                      context,
                      _controller,
                      imagPath: 'assets/images/boy.png',
                      title: 'Always Fascinated Learning',
                      subTitle:
                          "Anywhere, anytime. The time is at your discretion. So study wherever you can",
                      index: 3,
                    ),
                  ],
                ),
                // for showing dots
                Positioned(
                  bottom: 50,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: index,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(24, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
