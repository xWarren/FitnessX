import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/data/models/register_models.dart';
import '../../../core/resources/assets.dart';
import '../../../core/resources/colors.dart' as colors;
import '../../../core/resources/strings.dart' as strings;

class RegisterController extends GetxController {
  final key = GlobalKey<FormState>();
  final profileKey = GlobalKey<FormState>();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool obscureText = true.obs;
  RxBool terms = false.obs;
  final pageController = PageController(viewportFraction: 0.8);
  RxInt currentPageIndex = 0.obs;
  RxList gender = [
    "Male",
    "Female",
    "Preferred not to say",
  ].obs;
  RxString selectedValue = "Male".obs;

  List profile = [
    const RegisterModels(
      imageUrl: Assets.register2,
      title: strings.improveShape,
      description: strings.improveShape1,
      color: colors.brandColor,
    ),
    const RegisterModels(
      imageUrl: Assets.register3,
      title: strings.leanAndTone,
      description: strings.leanAndTone1,
      color: colors.secondaryColor,
    ),
    const RegisterModels(
      imageUrl: Assets.register4,
      title: strings.loseAFat,
      description: strings.loseAFat1,
      color: colors.brandColor,
    ),
  ];

  void onPageChanged(index) {
    currentPageIndex.value = index;
    update();
  }
}
