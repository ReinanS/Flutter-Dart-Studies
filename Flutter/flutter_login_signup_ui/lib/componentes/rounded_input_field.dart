import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/componentes/text_field_container.dart';
import 'package:flutter_login_signup_ui/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;

  RoundedInputField({
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        validator: _validaLogin,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(icon, color: kPrimaryColor),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }

  String _validaLogin(String texto) {
    if (texto.isEmpty) return "Digite o seu Email";

    return null;
  }
}
