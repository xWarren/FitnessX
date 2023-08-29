import 'package:fitness_x/core/routes/routes.dart';
import 'package:get/get.dart';

import '../../features/onboarding/onboarding_binding.dart';
import '../../features/onboarding/onboarding_page.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
  ];
}
