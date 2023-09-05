import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final key = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool obscureText = true.obs;
}
