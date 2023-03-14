import 'package:chat_firebase/onboarding/onbording.dart';
import 'package:chat_firebase/views/home_screen.dart';
import 'package:chat_firebase/views/signin&signup/signin_screen.dart';
import 'package:chat_firebase/views/signin&signup/signup_screen.dart';
import 'package:chat_firebase/views/splash_screen.dart';
import 'package:chat_firebase/views/widget/app_color.dart';
import 'package:chat_firebase/views/widget/app_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get authInstance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

// OnReady Function ::::::::::::::::::::::::::::::::::
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

// Initial Screen Function ::::::::::::::::::::::::::::::::::
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => SplashScreen())
        : Get.offAll(() => MyHomePage());
  }

  // Create User Function ::::::::::::::::::::::::::::::::::
  Future<void> registerUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      firebaseUser.value != null
          ? Get.offAll(() => MyHomePage())
          : Get.offAll(() => SignUpScreen());
      // ignore: empty_catches
    } catch (e) {
      Get.snackbar(
        "About User",
        "User Message",
        backgroundColor: AppColors.bgColor,
        snackPosition: SnackPosition.BOTTOM,
        titleText: TextWidget(
          text: "Account Failed Created",
          color: AppColors.textColor2,
          size: 24,
          fontWeight: FontWeight.bold,
          textalign: TextAlign.center,
        ),
        messageText: TextWidget(
          text: e.toString(),
          color: AppColors.textColor2,
          size: 18,
          fontWeight: FontWeight.bold,
          textalign: TextAlign.center,
        ),
      );
    }
  }

// Login User Function ::::::::::::::::::::::::::::::::::
  Future<void> loginUser(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      // ignore: empty_catches
    } catch (e) {
      Get.snackbar(
        "About User",
        "User Message",
        backgroundColor: AppColors.bgColor,
        snackPosition: SnackPosition.BOTTOM,
        titleText: TextWidget(
          text: "Account Not Founed",
          color: AppColors.textColor2,
          size: 24,
          fontWeight: FontWeight.bold,
          textalign: TextAlign.center,
        ),
        messageText: TextWidget(
          text: e.toString(),
          color: AppColors.textColor2,
          size: 18,
          fontWeight: FontWeight.bold,
          textalign: TextAlign.center,
        ),
      );
    }
  }

  // LogOut User Function ::::::::::::::::::::::::::::::::::
  Future<void> logoutUser() async => await _auth.signOut();
}
