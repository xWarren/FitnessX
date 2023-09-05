import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/assets.dart';
import '../../../../core/resources/colors.dart' as colors;
import '../../../../core/resources/strings.dart' as strings;
import '../../../../core/resources/text_styles.dart' as styles;
import '../../../../core/routes/routes.dart';

class LoginBody extends StatelessWidget {
  final dynamic controller;
  const LoginBody({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTitle(),
          const SizedBox(height: 5),
          _buildSubtitle(),
          const SizedBox(height: 20),
          _buildEmail(),
          const SizedBox(height: 20),
          _buildPassword(),
          const SizedBox(height: 10),
          _buildForgotPassword(),
          const SizedBox(height: 190),
          _buildButton(),
          const SizedBox(height: 20),
          _buildDivider(),
          const SizedBox(height: 20),
          _buildGoogleAndFacebook(),
          const SizedBox(height: 30),
          _buildRegister()
        ],
      ),
    );
  }

  Widget _buildRegister() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          strings.donthave,
          style: styles.subtitle3Regular,
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            Get.offAndToNamed(Routes.register);
          },
          child: const Text(
            strings.register,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: colors.secondaryColor,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildGoogleAndFacebook() {
    return Row(
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
                image: const DecorationImage(image: AssetImage(Assets.google))),
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
                image:
                    const DecorationImage(image: AssetImage(Assets.facebook))),
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
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
    );
  }

  Widget _buildButton() {
    return Container(
      width: Get.width,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
          onPressed: () {
            Get.offAndToNamed(Routes.welcome);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: colors.brandColor,
              shadowColor: colors.brandColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.iclogin),
              const SizedBox(width: 5),
              const Text(
                strings.login,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: colors.white,
                ),
              )
            ],
          )),
    );
  }

  Widget _buildForgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              // ignore: avoid_print
              print("Tapped");
            },
            child: const Text(
              strings.forgotPassword,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: colors.secondaryColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Obx(
        () => TextFormField(
          controller: controller.passwordController,
          textInputAction: TextInputAction.done,
          obscureText: controller.obscureText.value,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            fillColor: colors.borderColor,
            filled: true,
            prefixIcon: Image.asset(Assets.icpassword),
            hintText: strings.password,
            hintStyle: const TextStyle(fontSize: 16, color: colors.gray2),
            suffixIcon: GestureDetector(
                onTap: () {
                  controller.obscureText.value = !controller.obscureText.value;
                },
                child: Image.asset(
                  controller.obscureText.value ? Assets.ichide : Assets.icshow,
                )),
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
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        controller: controller.emailController,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          fillColor: colors.borderColor,
          filled: true,
          prefixIcon: Image.asset(Assets.icmail),
          hintText: strings.email,
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
    );
  }

  Widget _buildSubtitle() {
    return const Text(
      strings.welcomeBack,
      style: styles.title4Bold,
    );
  }

  Widget _buildTitle() {
    return const Text(
      strings.heyThere,
      style: styles.subtitle2Regular,
    );
  }
}
