import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/resources/assets.dart';
import '../../../core/resources/colors.dart ' as colors;
import '_components/goal_body.dart';

class GoalPage extends StatelessWidget {
  final dynamic controller;
  const GoalPage({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset(Assets.icexit)),
        ),
        body: GoalBody(controller: controller));
  }
}
