import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sleep_tracker_controller.dart';

class SleepTrackerPage extends GetView<SleepTrackerController> {
  const SleepTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Sleep Tracker Screen")],
      ),
    );
  }
}
