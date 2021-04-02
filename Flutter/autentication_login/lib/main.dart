import 'package:flutter/material.dart';
import 'package:autentication_login/Screens/Home/home_screen.dart';
import 'package:autentication_login/Screens/Login/login_screen.dart';
import 'package:autentication_login/Screens/Signup/signup_screen.dart';
import 'package:autentication_login/Screens/Welcome/welcome_screen.dart';
import 'package:autentication_login/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
