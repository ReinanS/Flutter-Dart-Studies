import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  TextFieldContainer({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      width: size.width * 0.80,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
