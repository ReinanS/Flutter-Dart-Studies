import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/Screens/Home/home_screen.dart';
import 'package:flutter_login_signup_ui/Screens/Login/components/background.dart';
import 'package:flutter_login_signup_ui/Screens/Signup/signup_screen.dart';
import 'package:flutter_login_signup_ui/componentes/already_have_an_account_acheck.dart';
import 'package:flutter_login_signup_ui/componentes/rounded_button.dart';
import 'package:flutter_login_signup_ui/componentes/rounded_input_field.dart';
import 'package:flutter_login_signup_ui/componentes/rounded_password_field.dart';
import 'package:flutter_login_signup_ui/services/login_api.dart';
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
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            Form(
              key: _formKey,
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
                    text: "LOGIN",
                    press: () {
                      _clickButton(context);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  _clickButton(BuildContext context) async {
    bool formOk = _formKey.currentState.validate();

    if (!formOk) return;

    String login = _crtlLogin.text;
    String password = _crtlPassword.text;

    print("login: $login senha: $password");

    var response = await LoginApi.login(login, password);

    if (response) _navegaHomePage(context);
  }

  _navegaHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
}
