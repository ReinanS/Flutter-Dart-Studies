import 'package:autentication_login/pages/Login/login_screen.dart';
import 'package:autentication_login/pages/Signup/signup_screen.dart';
import 'package:autentication_login/pages/Welcome/components/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:autentication_login/componentes/rounded_button.dart';
import 'package:autentication_login/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.40,
          ),
          SizedBox(height: size.height * 0.08),
          RoundedButton(
            text: "LOGIN",
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
          RoundedButton(
            text: "SIGN UP",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
