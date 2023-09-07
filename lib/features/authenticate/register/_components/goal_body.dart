import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/colors.dart' as colors;
import '../../../../core/resources/strings.dart' as strings;
import '../../../../core/resources/text_styles.dart' as styles;
import '../../../../core/routes/routes.dart';

class GoalBody extends StatelessWidget {
  final dynamic controller;
  const GoalBody({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(strings.goal, style: styles.title4Bold),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: const Text(strings.itWillHelp,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: colors.gray2,
                )),
          ),
          const SizedBox(height: 50),
          Expanded(
              child: PageView.builder(
            controller: controller.pageController,
            itemCount: controller.profile.length,
            onPageChanged: controller.onPageChanged,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var data = controller.profile[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            width: Get.width,
                            decoration: ShapeDecoration(
                                color: data.color,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Image.asset(
                                  data.imageUrl,
                                  height: 290,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  data.title,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: colors.white,
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 100),
                                  child: Divider(
                                    thickness: 1.0,
                                    color: colors.borderColor,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Text(
                                    data.description,
                                    maxLines: 3,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
          Wrap(
            children: [
              Container(
                height: 50,
                margin:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                width: Get.width,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAndToNamed(Routes.welcome);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colors.brandColor,
                        shadowColor: colors.brandColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(99),
                        )),
                    child: const Text(
                      strings.confirm,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: colors.white,
                      ),
                    )),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
