import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'progress_tracker_controller.dart';

class ProgressTrackerPage extends GetView<ProgressTrackerController> {
  const ProgressTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Progress Tracker  Screen")],
      ),
    );
  }
}
