import 'package:flutter/material.dart';
import 'package:flutter_aula03/pages/list_users/users_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: UsersPage(),
    );
  }
}
