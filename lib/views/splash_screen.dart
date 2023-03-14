import 'package:chat_firebase/onboarding/onbording.dart';
import 'package:chat_firebase/views/widget/app_color.dart';
import 'package:chat_firebase/views/widget/app_text.dart';
import 'package:chat_firebase/views/widget/assetsimages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate loading time
    Future.delayed(const Duration(seconds: 3), () {
      

      // Get.offNamed('/OnBoardingScreen');
      Get.off(
        () => const OnBoarding(),
        transition: Transition.fade,
        duration: const Duration(seconds: 1),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AppImage.logoImage,
              width: 140,
              height: 140,
            ),
            const SizedBox(
              height: 50,
            ),
            TextWidget(
              text: 'Students Chat',
              color: AppColors.textColor2,
              size: 40,
              fontWeight: FontWeight.bold,
              textalign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
