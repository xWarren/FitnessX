import 'package:get/get.dart';

import '../home/home_controller.dart';
import '../profile/profile_controller.dart';
import '../progress_tracker/progress_tracker_controller.dart';
import '../sleep_tracker/sleep_tracker_controller.dart';
import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<SleepTrackerController>(() => SleepTrackerController(),
        fenix: true);
    Get.lazyPut<ProgressTrackerController>(() => ProgressTrackerController(),
        fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  }
}
