import 'package:flutter/material.dart';
import 'package:flutter_components/components/widget_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: WidgetLogin(),
    );
  }
}
