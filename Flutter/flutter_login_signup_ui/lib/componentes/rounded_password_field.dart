import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/componentes/text_field_container.dart';
import 'package:flutter_login_signup_ui/constants.dart';

class RoundedPassWordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  RoundedPassWordField({
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
