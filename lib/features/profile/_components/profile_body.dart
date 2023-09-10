import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/assets.dart';
import '../../../core/resources/colors.dart' as colors;
import '../../../core/resources/strings.dart' as strings;
import '../../../core/resources/text_styles.dart' as styles;

class ProfileBody extends StatelessWidget {
  final dynamic controller;
  const ProfileBody({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  backgroundColor: colors.tertiaryColor,
                  child: Image.asset(Assets.imageProfile),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        strings.warrenVirgines,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: styles.subtitle3Regular,
                      ),
                      Text(
                        "Lose a Fat Program",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 13,
                          color: colors.gray2,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: colors.brandColor,
                          shadowColor: colors.brandColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(99))),
                      child: const Text(
                        strings.edit,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: colors.white,
                        ),
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: colors.gray3,
                          )),
                      color: colors.white,
                      shadows: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Text(
                          "180cm",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colors.tertiaryColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          strings.height,
                          style: TextStyle(
                            fontSize: 13,
                            color: colors.gray2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: colors.gray3,
                          )),
                      color: colors.white,
                      shadows: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Text(
                          "65kg",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colors.tertiaryColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          strings.weight,
                          style: TextStyle(
                            fontSize: 13,
                            color: colors.gray2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 50,
                    width: Get.width,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: colors.gray3,
                          )),
                      color: colors.white,
                      shadows: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 2,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Text(
                          "25yo",
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: colors.tertiaryColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          strings.age,
                          style: TextStyle(
                            fontSize: 13,
                            color: colors.gray2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 40,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      strings.account,
                      style: styles.subtitle2Bold,
                    ),
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.userProfile),
                              const SizedBox(width: 5),
                              const Text(
                                strings.personalData,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colors.gray1,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(Assets.nextProfile)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.documentProfile),
                              const SizedBox(width: 5),
                              const Text(
                                strings.achievement,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colors.gray1,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(Assets.nextProfile)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.activityProfile),
                              const SizedBox(width: 5),
                              const Text(
                                strings.activityHistory,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colors.gray1,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(Assets.nextProfile)
                        ],
                      ),
                    ),
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.workoutProfile),
                              const SizedBox(width: 5),
                              const Text(
                                strings.workoutProgress,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colors.gray1,
                                ),
                              ),
                            ],
                          ),
                          Obx(
                            () => Transform.scale(
                              scale: 0.7,
                              alignment: Alignment.centerRight,
                              child: CupertinoSwitch(
                                activeColor: colors.secondaryColor,
                                value: controller.workoutValue.value,
                                onChanged: (value) {
                                  controller.workoutValue.value = value;
                                  // ignore: avoid_print
                                  print(controller.workoutValue.value == true
                                      ? "On"
                                      : "Off");
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 40,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    strings.notification,
                    style: styles.subtitle2Bold,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(Assets.notificationProfile),
                          const SizedBox(width: 5),
                          const Text(
                            strings.popUpNotification,
                            style: TextStyle(
                              fontSize: 13,
                              color: colors.gray1,
                            ),
                          ),
                        ],
                      ),
                      Obx(
                        () => Transform.scale(
                          scale: 0.7,
                          alignment: Alignment.centerRight,
                          child: CupertinoSwitch(
                            activeColor: colors.secondaryColor,
                            value: controller.notificationValue.value,
                            onChanged: (value) {
                              controller.notificationValue.value = value;
                              // ignore: avoid_print
                              print(controller.notificationValue.value == true
                                  ? "On"
                                  : "Off");
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 40,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      strings.other,
                      style: styles.subtitle2Bold,
                    ),
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.messageProfile),
                              const SizedBox(width: 5),
                              const Text(
                                strings.contactUs,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colors.gray1,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(Assets.nextProfile)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.privacyProfile),
                              const SizedBox(width: 5),
                              const Text(
                                strings.privacyPolicy,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colors.gray1,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(Assets.nextProfile)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(Assets.settingsProfile),
                              const SizedBox(width: 5),
                              const Text(
                                strings.settings,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colors.gray1,
                                ),
                              ),
                            ],
                          ),
                          Image.asset(Assets.nextProfile)
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
