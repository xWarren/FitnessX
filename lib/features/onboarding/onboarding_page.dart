import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '_components/onboardin_pageview.dart';
import '_components/onboarding_circular.dart';
import 'onboarding_controller.dart';

class OnboardingPage extends GetView<OnboardingController> {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        OnboardingPageView(
          controller: controller,
          pageController: controller.pageController,
          onPageChanged: controller.onPageChanged,
        ),
        OnboardingCircular(
          goToPage: controller.goToPage,
          kCurve: controller.kCurve,
          pageController: controller.pageController,
          controller: controller,
        ),
      ]),
    );
  }
}
