import 'package:get/get.dart';

class HomeController extends GetxController {
  int caloriesValue = 760;
  int userCalories = 1000;

  get caloriesLeft {
    int result = (caloriesValue - userCalories).abs();

    return result;
  }
}
