import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart' as colors;
import '../../core/resources/strings.dart' as strings;
import '../../core/resources/text_styles.dart' as styles;
import '_components/home_body.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Text(
                        strings.welcomeBackHome,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 13,
                          color: colors.gray2,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        strings.warrenVirgines,
                        style: styles.subtitle2Bold,
                      ),
                    ),
                  ]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(Assets.icnotification),
              )
            ],
          ),
        ),
        body: HomeBody(controller: controller));
  }
}
