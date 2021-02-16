import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula 3",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: WidgetLogin(),
    );
  }
}

class WidgetLogin extends StatefulWidget {
  @override
  _WidgetLoginState createState() => _WidgetLoginState();
}

class _WidgetLoginState extends State<WidgetLogin> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ));

    final passwordField = TextField(
        obscureText: true,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ));

    final buttonLogin = ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      child: RaisedButton(
        color: Color(0xff01A0C7),
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style:
              style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
    );

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150.0,
                  child: Image.asset(
                    "images/perfil.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 40.0),
                emailField,
                SizedBox(height: 40.0),
                passwordField,
                SizedBox(height: 40.0),
                buttonLogin,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
