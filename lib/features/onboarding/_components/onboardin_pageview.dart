import 'package:flutter/material.dart';

import '../../../core/resources/text_styles.dart' as style;

class OnboardingPageView extends StatelessWidget {
  final dynamic controller;
  final PageController pageController;
  final Function onPageChanged;
  const OnboardingPageView(
      {required this.controller,
      required this.pageController,
      required this.onPageChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView.builder(
      controller: pageController,
      itemCount: controller.onboarding.length,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: controller.onPageChanged,
      itemBuilder: (context, index) {
        var data = controller.onboarding[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(data.imageUrl),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                data.title,
                style: style.title2Bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                data.description,
                maxLines: 3,
                textAlign: TextAlign.left,
                style: style.subtitle3Regular,
              ),
            ),
          ],
        );
      },
    ));
  }
}
