import 'package:chat_firebase/views/mymain_screen.dart';
import 'package:get/get.dart';

import '../../onboarding/onbording.dart';
import '../home_screen.dart';
import '../signin&signup/signin_screen.dart';
import '../signin&signup/signup_screen.dart';
import '../splash_screen.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: '/MyHomeScreen', page: () => const MyHomePage()),
    GetPage(name: '/MyMainScreen', page: () => const MyMainScreen()),
    GetPage(name: '/OnBoardingScreen', page: () => const OnBoarding()),
    GetPage(name: '/SignInScreen', page: () =>  SignInScreen()),
    GetPage(name: '/SignUpScreen', page: () =>  SignUpScreen()),
    // GetPage(name: '/profile', page: () => Profile()),
    // GetPage(name: '/profile', page: () => Profile()),
  ];
}
