import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/componentes/text_field_container.dart';
import 'package:flutter_login_signup_ui/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  RoundedInputField({
    this.hintText,
    this.icon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            icon: Icon(icon, color: kPrimaryColor),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
