import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/componentes/text_field_container.dart';
import 'package:flutter_login_signup_ui/constants.dart';

class RoundedPassWordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  RoundedPassWordField({
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        onChanged: onChanged,
        controller: controller,
        validator: _validaPassword,
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

  String _validaPassword(String texto) {
    if (texto.isEmpty) return "Digite sua Senha";

    return null;
  }
}
