import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/assets.dart';
import '../../../core/resources/colors.dart' as colors;

class OnboardingCircular extends StatelessWidget {
  final PageController pageController;
  final dynamic kCurve;
  final Function goToPage;
  final dynamic controller;
  const OnboardingCircular(
      {required this.pageController,
      required this.kCurve,
      required this.goToPage,
      required this.controller,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Stack(alignment: Alignment.center, clipBehavior: Clip.none, children: [
          Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(top: 20),
              child: Obx(
                () => CircularProgressIndicator(
                  strokeWidth: 2.0,
                  value: (1.0 + controller.currentPageIndex.value) /
                      controller.onboarding.length,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    colors.brandColor,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 300), curve: kCurve);
                goToPage();
              },
              child: CircleAvatar(
                backgroundColor: colors.brandColor,
                child: Image.asset(Assets.icarrow),
              ),
            ),
          )
        ])
      ]),
    );
  }
}
