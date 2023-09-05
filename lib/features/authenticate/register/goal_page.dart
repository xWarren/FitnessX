import 'package:flutter/material.dart';

import '_components/goal_body.dart';

class GoalPage extends StatelessWidget {
  final dynamic controller;
  const GoalPage({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: GoalBody(controller: controller));
  }
}
