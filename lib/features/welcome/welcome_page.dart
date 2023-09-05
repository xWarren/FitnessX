import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart' as colors;
import '../../core/resources/strings.dart' as strings;
import '../../core/resources/text_styles.dart' as styles;
import '../../core/routes/routes.dart';
import 'welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  Assets.welcome,
                  height: 250,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 50),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      strings.welcome,
                      style: styles.title4Bold,
                    ),
                    Text(
                      strings.warren,
                      style: styles.title4Bold,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  child: Text(strings.youAre,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: colors.gray2,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Row(
        children: [
          Container(
            width: Get.width,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: ElevatedButton(
              onPressed: () {
                Get.offAndToNamed(Routes.dashboard);
              },
              style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  backgroundColor: colors.brandColor,
                  shadowColor: colors.brandColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99))),
              child: const Text(
                strings.goToHome,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
