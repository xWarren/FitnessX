import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart' as colors;
import '../../core/resources/strings.dart' as strings;
import '../../core/resources/text_styles.dart' as styles;
import '_components/profile_body.dart';
import 'profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text(
              strings.profile,
              style: styles.subtitle2Bold,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                    onTap: () {}, child: Image.asset(Assets.detailProfile)),
              )
            ]),
        body: ProfileBody(controller: controller));
  }
}
