import 'package:fitness_x/core/routes/routes.dart';

import 'package:get/get.dart';

import '../../features/authenticate/register/register_binding.dart';
import '../../features/authenticate/register/register_page.dart';
import '../../features/getstarted/getstarted_binding.dart';
import '../../features/getstarted/getstarted_page.dart';
import '../../features/onboarding/onboarding_binding.dart';
import '../../features/onboarding/onboarding_page.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.getstarted,
      page: () => const GetStartedPage(),
      binding: GetStartedBinding(),
    ),
    GetPage(
      name: Routes.onboarding,
      page: () => const OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),
  ];
}
