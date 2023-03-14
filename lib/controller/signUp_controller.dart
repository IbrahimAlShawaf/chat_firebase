import 'package:chat_firebase/controller/Auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get signUpInstance => Get.find();

  // Textfield Controller
  final email = TextEditingController();
  final password = TextEditingController();
  final name = TextEditingController();
  final mobile = TextEditingController();

  // call function register
  void register(String email, String password) {
    AuthController.authInstance.registerUser(email, password);
  }
}
