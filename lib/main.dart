import 'package:chat_firebase/controller/Auth_controller.dart';
import 'package:chat_firebase/controller/signUp_controller.dart';
import 'package:chat_firebase/onboarding/onbording.dart';
import 'package:chat_firebase/views/home_screen.dart';
import 'package:chat_firebase/views/mymain_screen.dart';
import 'package:chat_firebase/views/signin&signup/signin_screen.dart';
import 'package:chat_firebase/views/signin&signup/signup_screen.dart';
import 'package:chat_firebase/views/splash_screen.dart';
import 'package:chat_firebase/views/widget/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then(
    (value) => Get.put(AuthController()),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Students Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: Routes.routes,
    );
  }
}
