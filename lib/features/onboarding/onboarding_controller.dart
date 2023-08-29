import 'package:fitness_x/core/data/models/onboarding_models.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';

class OnboardingController extends GetxController {
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
