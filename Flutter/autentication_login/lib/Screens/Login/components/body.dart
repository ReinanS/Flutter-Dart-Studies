import 'package:autentication_login/Screens/product/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:autentication_login/Screens/Login/components/alert.dart';
import 'package:autentication_login/Screens/Login/components/background.dart';
import 'package:autentication_login/Screens/Signup/signup_screen.dart';
import 'package:autentication_login/componentes/already_have_an_account_acheck.dart';
import 'package:autentication_login/componentes/rounded_button.dart';
import 'package:autentication_login/componentes/rounded_input_field.dart';
import 'package:autentication_login/componentes/rounded_password_field.dart';
import 'package:autentication_login/models/usuario.dart';
import 'package:autentication_login/services/login_api.dart';
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
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.04),
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

    Usuario usuario = await LoginApi.login(login, password);

    if (usuario != null)
      _navegaHomePage(context);
    else {
      alert(context, "Login Invalido");
    }
  }

  _navegaHomePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProductsScreen()),
    );
  }
}
