import 'package:get/get.dart';

import 'getstarted_controller.dart';

class GetStartedBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetStartedController());
  }
}
