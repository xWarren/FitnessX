import 'package:fitness_x/core/resources/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/resources/colors.dart' as colors;
import '../../core/resources/strings.dart' as strings;
import '../../core/resources/text_styles.dart' as styles;
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: Text(
                      strings.welcomeBackHome,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13,
                        color: colors.gray2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      strings.warrenVirgines,
                      style: styles.subtitle2Bold,
                    ),
                  ),
                ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(Assets.icnotification),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              clipBehavior: Clip.none,
              children: [
                Image.asset(Assets.banner),
                const Padding(
                  padding: EdgeInsets.only(left: 40, top: 40),
                  child: Text(
                    "BMI (Body Mass Index)",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40, top: 70),
                  child: Text(
                    "You have a normal weight",
                    style: TextStyle(
                      fontSize: 13,
                      color: colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 40, top: 100),
                  width: Get.width / 2.5,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colors.secondaryColor,
                          shadowColor: colors.secondaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: const Text(
                        "View More",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: colors.white,
                        ),
                      )),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 200, top: 10),
                    child: Image.asset(Assets.bannerpie)),
                const Padding(
                  padding: EdgeInsets.only(left: 290, top: 55),
                  child: Text(
                    "20,3",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 60,
                width: Get.width,
                decoration: ShapeDecoration(
                    color: colors.tertiaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Today Target",
                        style: styles.subtitle3SemiBold,
                      ),
                      SizedBox(
                        width: Get.width / 5,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: colors.brandColor,
                                shadowColor: colors.brandColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            child: const Text(
                              "Check",
                              style: TextStyle(
                                fontSize: 12,
                                color: colors.white,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Activity Status",
                style: styles.subtitle2Bold,
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 320,
                    width: Get.width / 3,
                    decoration: ShapeDecoration(
                        color: colors.tertiaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          height: 100,
                          width: Get.width / 3,
                          decoration: ShapeDecoration(
                              color: colors.tertiaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 200,
                          width: Get.width / 3,
                          decoration: ShapeDecoration(
                              color: colors.tertiaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Workout Progress",
                style: styles.subtitle2Bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
