import 'package:get/get.dart';

import '../home/home_controller.dart';
import '../profile/profile_controller.dart';
import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
  }
}
