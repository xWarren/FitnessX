import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/assets.dart';
import '../../../core/resources/colors.dart' as colors;
import '../../../core/resources/strings.dart' as strings;
import '../../../core/resources/text_styles.dart' as styles;

class HomeBody extends StatelessWidget {
  final dynamic controller;

  const HomeBody({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                strings.bmi,
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
                    strings.viewMore,
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
                    strings.todayTarget,
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
            strings.activityStatus,
            style: styles.subtitle2Bold,
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 370,
                  decoration: ShapeDecoration(
                    color: colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 7,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Stack(
                        children: [
                          Container(
                            width: 20,
                            height: Get.height * 0.35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: colors.borderColor,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 20,
                              height: Get.height * 0.20,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      colors: [
                                        colors.secondaryColor,
                                        colors.brandColor
                                      ])),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Water Intake",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "4 Liters",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: colors.brandColor,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Real time updates",
                              style: TextStyle(
                                fontSize: 11,
                                color: colors.gray2,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.secondaryColor,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "6am - 8am",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: colors.gray2,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "500ml",
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: colors.secondaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.secondaryColor,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "9am - 11am",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: colors.gray2,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "500ml",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: colors.secondaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.secondaryColor,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "11am - 2pm",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: colors.gray2,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "1000ml",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: colors.secondaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.secondaryColor,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "2pm - 4pm",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: colors.gray2,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "700ml",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: colors.secondaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 7,
                                  width: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colors.secondaryColor,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "4pm - now",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: colors.gray2,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "900ml",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: colors.secondaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: ShapeDecoration(
                        color: colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadows: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              strings.sleep,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "8h 20m",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: colors.brandColor,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Image.asset(Assets.sleepGraph)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: ShapeDecoration(
                        color: colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        shadows: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 7,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              strings.calories,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "760 kCal",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: colors.brandColor,
                              ),
                            ),
                            const SizedBox(height: 25),
                            Center(
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.center,
                                children: [
                                  Transform.scale(
                                    scale: 1.8,
                                    child: CircularProgressIndicator(
                                      backgroundColor: colors.borderColor,
                                      strokeWidth: 3.0,
                                      value: (1.0 + controller.caloriesValue) /
                                          controller.userCalories,
                                      valueColor:
                                          const AlwaysStoppedAnimation<Color>(
                                        colors.caloriesColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colors.brandColor,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${controller.caloriesLeft.toString()} kCal",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 9,
                                            color: colors.white,
                                          ),
                                        ),
                                        const Text(
                                          strings.left,
                                          style: TextStyle(
                                            fontSize: 9,
                                            color: colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 25)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                strings.workoutProgress,
                style: styles.subtitle2Bold,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colors.brandColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Row(children: [
                    const Text("Weekly",
                        style: TextStyle(
                          fontSize: 11,
                          color: colors.white,
                        )),
                    const SizedBox(width: 5),
                    Image.asset(Assets.icDownWhite)
                  ]))
            ],
          ),
        ),
        const SizedBox(height: 30),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                strings.latestWorkout,
                style: styles.subtitle2Bold,
              ),
              Text("See more",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: colors.gray2,
                  ))
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
