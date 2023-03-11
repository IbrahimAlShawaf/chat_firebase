import 'package:chat_firebase/views/widget/app_color.dart';
import 'package:chat_firebase/views/widget/app_text.dart';
import 'package:flutter/material.dart';

import '../onboarding/onbording.dart';

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
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnBoarding(),
        ),
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
            Image.asset(
              'assets/images/logo.png',
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
