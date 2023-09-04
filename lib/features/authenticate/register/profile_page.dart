import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/assets.dart';
import '../../../core/resources/colors.dart ' as colors;
import '../../../core/resources/strings.dart' as strings;
import '../../../core/resources/text_styles.dart' as styles;
import 'goal_page.dart';

class ProfilePage extends StatelessWidget {
  final dynamic controller;
  const ProfilePage({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: controller.profileKey,
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    Assets.register,
                    height: 350,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    strings.completeProfile,
                    style: styles.title4Bold,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    strings.helpUs,
                    style: TextStyle(
                      fontSize: 13,
                      color: colors.gray2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        fillColor: colors.borderColor,
                        filled: true,
                        prefixIcon: Image.asset(Assets.icuser),
                        hintText: strings.chooseGender,
                        hintStyle:
                            const TextStyle(fontSize: 16, color: colors.gray2),
                        suffixIcon: Image.asset(Assets.icdown),
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
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        fillColor: colors.borderColor,
                        filled: true,
                        prefixIcon: Image.asset(Assets.iccalendar),
                        hintText: strings.dateOfBirth,
                        hintStyle:
                            const TextStyle(fontSize: 16, color: colors.gray2),
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
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        fillColor: colors.borderColor,
                        filled: true,
                        prefixIcon: Image.asset(Assets.icscale),
                        hintText: strings.yourWeight,
                        hintStyle:
                            const TextStyle(fontSize: 16, color: colors.gray2),
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: colors.secondaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "KG",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: colors.white,
                              ),
                            ),
                          ),
                        ),
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
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        fillColor: colors.borderColor,
                        filled: true,
                        prefixIcon: Image.asset(Assets.icheight),
                        hintText: strings.yourHeight,
                        hintStyle:
                            const TextStyle(fontSize: 16, color: colors.gray2),
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: colors.secondaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "CM",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: colors.white,
                              ),
                            ),
                          ),
                        ),
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
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.to(
                              GoalPage(controller: controller),
                              transition: Transition.fadeIn,
                              preventDuplicates: false,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colors.brandColor,
                              shadowColor: colors.brandColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(99))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                strings.next,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: colors.white,
                                ),
                              ),
                              Image.asset(Assets.icarrow)
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
