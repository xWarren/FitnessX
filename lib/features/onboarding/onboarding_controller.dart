import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/data/models/onboarding_models.dart';
import '../../core/resources/assets.dart';
import '../../core/routes/routes.dart';

class OnboardingController extends GetxController
    with GetTickerProviderStateMixin {
  AnimationController? animationController;
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  RxInt pageIndex = 0.obs;
  final kCurve = Curves.linear;

  @override
  void onInit() {
    super.onInit();
    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animationController?.repeat();
  }

  void onPageChanged(index) {
    currentPageIndex.value = index;
    update();
  }

  void goToPage() {
    if (currentPageIndex.value == 3) {
      Get.offNamedUntil(Routes.register, (route) => false);
    }
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  List onboarding = [
    const OnboardingModels(
        imageUrl: Assets.onboard1,
        title: "Track Your Goal",
        description:
            "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals"),
    const OnboardingModels(
        imageUrl: Assets.onboard2,
        title: "Get Burn",
        description:
            "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever"),
    const OnboardingModels(
        imageUrl: Assets.onboard3,
        title: "Eat Well",
        description:
            "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun"),
    const OnboardingModels(
        imageUrl: Assets.onboard4,
        title: "Improve Sleep  Quality",
        description:
            "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning"),
  ];
}
