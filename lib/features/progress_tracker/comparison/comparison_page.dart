import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/resources/assets.dart';
import '../../../core/resources/colors.dart' as colors;
import '../../../core/resources/strings.dart' as strings;
import '../../../core/resources/text_styles.dart' as styles;
import '../../../core/routes/routes.dart';

class ComparisonPage extends StatelessWidget {
  final dynamic controller;
  const ComparisonPage({required this.controller, super.key});

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
            strings.comparison,
            style: styles.subtitle2Bold,
          ),
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Image.asset(Assets.icexit)),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {}, child: Image.asset(Assets.detailProfile)),
            )
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  fillColor: colors.borderColor,
                  filled: true,
                  suffixIcon: Image.asset(Assets.nextProfile),
                  hintText: "Select Month 1",
                  prefixIcon: Image.asset(Assets.iccalendar),
                  hintStyle: const TextStyle(fontSize: 16, color: colors.gray2),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: colors.gray3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: colors.gray3),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  fillColor: colors.borderColor,
                  filled: true,
                  suffixIcon: Image.asset(Assets.nextProfile),
                  hintText: "Select Month 2",
                  prefixIcon: Image.asset(Assets.iccalendar),
                  hintStyle: const TextStyle(fontSize: 16, color: colors.gray2),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: colors.gray3),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: colors.gray3),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Get.width / 1.4,
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                backgroundColor: colors.brandColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
              onPressed: () {},
              child: const Text(
                strings.compare,
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
