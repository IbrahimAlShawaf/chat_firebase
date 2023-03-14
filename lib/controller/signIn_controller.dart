


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Auth_controller.dart';

class SignInController extends GetxController {
  static SignInController get signInInstance => Get.find();

  // Textfield Controller
  final email = TextEditingController();
  final password = TextEditingController();
  

  // call function register
  void login(String email, String password) {
    AuthController.authInstance.loginUser(email, password);
  }
}