import 'package:flutter/material.dart';
import 'package:autentication_login/componentes/text_field_container.dart';
import 'package:autentication_login/constants.dart';

class RoundedPassWordField extends StatefulWidget {
  final TextEditingController controller;

  RoundedPassWordField({
    this.controller,
  });

  @override
  _RoundedPassWordFieldState createState() =>
      _RoundedPassWordFieldState(controller: controller);
}

class _RoundedPassWordFieldState extends State<RoundedPassWordField> {
  final TextEditingController controller;
  IconData passwordIcon = Icons.visibility_off;
  bool obscureText = true;

  _RoundedPassWordFieldState({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: obscureText,
        controller: controller,
        validator: _validaPassword,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              passwordIcon,
              size: 25,
              color: kPrimaryColor,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;

                if (obscureText) {
                  passwordIcon = Icons.visibility_off;
                } else {
                  passwordIcon = Icons.visibility;
                }
              });
            },
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
