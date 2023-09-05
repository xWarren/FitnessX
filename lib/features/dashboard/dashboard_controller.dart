import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_page.dart';
import '../profile/profile_page.dart';
import '../progress_tracker/progress_tracker_page.dart';
import '../search/search_page.dart';
import '../sleep_tracker/sleep_tracker_page.dart';

class DashboardController extends GetxController {
  Widget? currentScreen;
  var currentPageIndex = 0.obs;
  List<Widget> contents = [
    const HomePage(),
    const SleepTrackerPage(),
    const SearchPage(),
    const ProgressTrackerPage(),
    const ProfileScreen()
  ];

  void onTap(index) {
    currentPageIndex.value = index;
  }
}
