import 'package:chat_firebase/views/mymain_screen.dart';
import 'package:chat_firebase/views/signin&signup/signin_screen.dart';
import 'package:chat_firebase/views/signin&signup/signup_screen.dart';
import 'package:chat_firebase/views/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Students Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        'MyMainScreen': (context) => const MyMainScreen(),
        'SignInScreen': (context) => const SignInScreen(),
        'SignUpScreen': (context) => const SignUpScreen(),
      },
    );
  }
}
