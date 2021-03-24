import 'package:flutter/material.dart';
import 'package:flutter_login_signup_ui/Screens/Home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogo de Produtos"),
      ),
      body: Body(),
    );
  }
}
