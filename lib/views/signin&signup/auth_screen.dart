import 'package:chat_firebase/views/signin&signup/signin_screen.dart';
import 'package:chat_firebase/views/signin&signup/signup_screen.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return  SignInScreen();
    } else {
    return   SignUpScreen();
    }
  }
}
