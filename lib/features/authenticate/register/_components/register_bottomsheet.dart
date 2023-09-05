import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/assets.dart';
import '../../../../core/resources/colors.dart' as colors;
import '../../../../core/resources/strings.dart' as strings;
import '../../../../core/resources/text_styles.dart' as styles;

class RegisterBottomSheet extends StatelessWidget {
  const RegisterBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: Get.width,
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: colors.brandColor,
                  shadowColor: colors.brandColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99))),
              child: const Text(
                strings.register,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: colors.white,
                ),
              )),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 1.0,
                color: colors.gray3,
              )),
              Text(
                strings.or,
                style: TextStyle(
                  fontSize: 12,
                  color: colors.black,
                ),
              ),
              Expanded(
                  child: Divider(
                thickness: 1.0,
                color: colors.gray3,
              )),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                // ignore: avoid_print
                print("Tapped");
              },
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                    color: colors.borderColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: colors.gray3),
                    ),
                    image: const DecorationImage(
                        image: AssetImage(Assets.google))),
              ),
            ),
            const SizedBox(width: 30),
            GestureDetector(
              onTap: () {
                // ignore: avoid_print
                print("Tapped");
              },
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                    color: colors.borderColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: colors.gray3),
                    ),
                    image: const DecorationImage(
                        image: AssetImage(Assets.facebook))),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              strings.alreadyHave,
              style: styles.subtitle3Regular,
            ),
            const SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                // ignore: avoid_print
                print("Tapped");
              },
              child: const Text(
                strings.login,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: colors.secondaryColor,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
