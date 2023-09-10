import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart' as colors;
import '../../core/resources/strings.dart' as strings;
import '../../core/resources/text_styles.dart' as styles;
import 'comparison/comparison_page.dart';
import 'progress_tracker_controller.dart';

class ProgressTrackerPage extends GetView<ProgressTrackerController> {
  const ProgressTrackerPage({super.key});

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
            strings.progressPhoto,
            style: styles.subtitle2Bold,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {}, child: Image.asset(Assets.detailProfile)),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: ShapeDecoration(
                  color: colors.redGradient,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: colors.white,
                        maxRadius: 25,
                        child: Image.asset(Assets.reminder)),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            strings.reminder,
                            style: TextStyle(
                              fontSize: 13,
                              color: colors.red,
                            ),
                          ),
                          Text(
                            strings.nextPhotos,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: ShapeDecoration(
                  color: colors.tertiaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            strings.trackYourProgress,
                            style: TextStyle(
                              fontSize: 13,
                              color: colors.black,
                            ),
                          ),
                          const Row(
                            children: [
                              Text(
                                strings.monthPhoto,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colors.black,
                                ),
                              ),
                              Text(
                                " Photo",
                                style: TextStyle(
                                    fontSize: 13, color: colors.brandColor),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: colors.brandColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              child: const Text(
                                strings.learnMore,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: colors.white,
                                ),
                              ))
                        ],
                      ),
                    ),
                    Image.asset(Assets.calendar)
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: ShapeDecoration(
                  color: colors.tertiaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      strings.comparePhoto,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: colors.black,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(ComparisonPage(controller: controller));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: colors.brandColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: const Text(
                          strings.compare,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: colors.white,
                          ),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    strings.gallery,
                    style: styles.subtitle2SemiBold,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      strings.seeMore,
                      style: TextStyle(
                        fontSize: 12,
                        color: colors.gray2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "2 June",
                style: TextStyle(fontSize: 13, color: colors.gray1),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: controller.tracker.length,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var data = controller.tracker[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [Image.asset(data.imageUrl)],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "5 May",
                style: TextStyle(fontSize: 13, color: colors.gray1),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: controller.tracker.length,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var data = controller.tracker[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [Image.asset(data.imageUrl)],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: () {},
        child: CircleAvatar(
            maxRadius: 30,
            backgroundColor: colors.secondaryColor,
            child: Image.asset(Assets.cameraWhite)),
      ),
    );
  }
}
