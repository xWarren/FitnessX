import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart' as colors;
import '../../core/resources/strings.dart' as strings;
import '../../core/resources/text_styles.dart' as styles;
import 'sleep_tracker_controller.dart';

class SleepTrackerPage extends GetView<SleepTrackerController> {
  const SleepTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          centerTitle: true,
          title: const Text(
            strings.sleepTracker,
            style: styles.subtitle2Bold,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {}, child: Image.asset(Assets.detailProfile)),
            )
          ]),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Text("Sleep Tracker Screen"))],
      ),
    );
  }
}
