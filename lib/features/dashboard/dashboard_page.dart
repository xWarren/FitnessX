import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart ' as colors;
import '../home/home_page.dart';
import '../profile/profile_page.dart';
import '../progress_tracker/progress_tracker_page.dart';
import '../search/search_page.dart';
import '../sleep_tracker/sleep_tracker_page.dart';
import 'dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Obx(
        () => Scaffold(
          body: controller.contents[controller.currentPageIndex.value],
          bottomNavigationBar: BottomAppBar(
            elevation: 15,
            color: colors.white,
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                    icon: Image.asset(
                      controller.currentPageIndex.value == 0
                          ? Assets.homefilled
                          : Assets.home,
                    ),
                    onPressed: () {
                      controller.currentScreen = const HomePage();
                      controller.currentPageIndex.value = 0;
                    }),
                const Spacer(),
                IconButton(
                    icon: Image.asset(
                      controller.currentPageIndex.value == 1
                          ? Assets.activityfilled
                          : Assets.activity,
                    ),
                    onPressed: () {
                      controller.currentScreen = const SleepTrackerPage();
                      controller.currentPageIndex.value = 1;
                    }),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                IconButton(
                    icon: Image.asset(
                      controller.currentPageIndex.value == 3
                          ? Assets.camerafilled
                          : Assets.camera,
                    ),
                    onPressed: () {
                      controller.currentScreen = const ProgressTrackerPage();
                      controller.currentPageIndex.value = 3;
                    }),
                const Spacer(),
                IconButton(
                    icon: Image.asset(
                      controller.currentPageIndex.value == 4
                          ? Assets.profile2filled
                          : Assets.profile2,
                    ),
                    onPressed: () {
                      controller.currentScreen = const ProfileScreen();
                      controller.currentPageIndex.value = 4;
                    }),
                const Spacer(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: controller.currentPageIndex.value == 2
                  ? colors.secondaryColor
                  : colors.brandColor,
              autofocus: true,
              child: Image.asset(
                Assets.search,
              ),
              onPressed: () {
                controller.currentScreen = const SearchPage();
                controller.currentPageIndex.value = 2;
              }),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
