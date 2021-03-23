import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/Screens/Login/components/background.dart';
import 'package:flutter_login_signup_ui/Screens/Login/login_screen.dart';
import 'package:flutter_login_signup_ui/Screens/Signup/components/or_divider.dart';
import 'package:flutter_login_signup_ui/Screens/Signup/components/social_icon.dart';
import 'package:flutter_login_signup_ui/componentes/already_have_an_account_acheck.dart';
import 'package:flutter_login_signup_ui/componentes/rounded_button.dart';
import 'package:flutter_login_signup_ui/componentes/rounded_input_field.dart';
import 'package:flutter_login_signup_ui/componentes/rounded_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final _crtlLogin = TextEditingController();
  final _crtlPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            Form(
              child: Column(
                children: [
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value) {},
                    controller: _crtlLogin,
                  ),
                  RoundedPassWordField(
                    onChanged: (value) {},
                    controller: _crtlPassword,
                  ),
                  RoundedButton(
                    text: "SIGNUP",
                    press: () {
                      print(_crtlLogin.text);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
