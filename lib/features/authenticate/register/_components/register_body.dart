import 'package:fitness_x/features/authenticate/register/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/assets.dart';
import '../../../../core/resources/colors.dart' as colors;
import '../../../../core/resources/strings.dart' as strings;
import '../../../../core/resources/text_styles.dart' as styles;
import '../../../../core/routes/routes.dart';

class RegisterBody extends StatelessWidget {
  final dynamic controller;
  const RegisterBody({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: controller.key,
            child: Column(
              children: [
                const SizedBox(height: 25),
                _buildTitle(),
                _buildDescription(),
                const SizedBox(height: 50),
                _buildFirstName(),
                const SizedBox(height: 10),
                _buildLastName(),
                const SizedBox(height: 10),
                _buildEmail(),
                const SizedBox(height: 10),
                _buildPassword(),
                const SizedBox(height: 20),
                _buildCheckBox(),
                const SizedBox(height: 50),
                _buildButton(),
                const SizedBox(height: 20),
                _buildDivider(),
                const SizedBox(height: 20),
                _buildGoogleAndFacebook(),
                const SizedBox(height: 30),
                _buildLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDescription() =>
      const Text(strings.createAccount, style: styles.title4Bold);

  Widget _buildTitle() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(strings.heyThere, style: styles.subtitle2Regular),
        SizedBox(height: 5),
      ],
    );
  }

  Widget _buildLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          strings.alreadyHave,
          style: styles.subtitle3Regular,
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.login);
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
    );
  }

  Widget _buildButton() {
    return controller.terms.value
        ? Container(
            width: Get.width,
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
                onPressed: () {
                  Get.to(
                    ProfilePage(controller: controller),
                    transition: Transition.fadeIn,
                    preventDuplicates: false,
                  );
                },
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
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: Get.width,
              height: 60,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                  color: colors.gray3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99))),
              child: const Text(
                strings.register,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: colors.white,
                ),
              ),
            ),
          );
  }

  Widget _buildCheckBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Obx(
        () => Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              value: controller.terms.value,
              activeColor: colors.brandColor,
              onChanged: (value) {
                controller.terms.value = !controller.terms.value;
              },
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      const Text(
                        strings.continuing,
                        style: TextStyle(
                          fontSize: 14,
                          color: colors.gray2,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // ignore: avoid_print
                          print("Tapped");
                        },
                        child: const Text(
                          strings.privacyPolicy,
                          style: TextStyle(
                            fontSize: 14,
                            color: colors.secondaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      const Text(
                        strings.and,
                        style: TextStyle(
                          fontSize: 14,
                          color: colors.gray2,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // ignore: avoid_print
                          print("Tapped");
                        },
                        child: const Text(
                          strings.term,
                          style: TextStyle(
                            fontSize: 14,
                            color: colors.secondaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
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
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller.emailController,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
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

  Widget _buildLastName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller.lastNameController,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          fillColor: colors.borderColor,
          filled: true,
          prefixIcon: Image.asset(Assets.icname),
          hintText: strings.lastName,
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

  Widget _buildFirstName() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller.firstNameController,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          fillColor: colors.borderColor,
          filled: true,
          prefixIcon: Image.asset(Assets.icname),
          hintText: strings.firstName,
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
}
