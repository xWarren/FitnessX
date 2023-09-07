import 'package:get/get.dart';

import '../../core/data/models/account_models.dart';
import '../../core/resources/assets.dart';
import '../../core/resources/strings.dart' as strings;

class ProfileController extends GetxController {
  RxBool workoutValue = false.obs;
  RxBool notificationValue = false.obs;
  List account = [
    const AccountModels(
      icon: Assets.userProfile,
      title: strings.personalData,
      iconNext: Assets.nextProfile,
    ),
    const AccountModels(
      icon: Assets.documentProfile,
      title: strings.achievement,
      iconNext: Assets.nextProfile,
    ),
    const AccountModels(
      icon: Assets.activityProfile,
      title: strings.activityHistory,
      iconNext: Assets.nextProfile,
    ),
    const AccountModels(
      icon: Assets.workoutProfile,
      title: strings.workoutProgress,
      iconNext: Assets.nextProfile,
    ),
  ];
}
