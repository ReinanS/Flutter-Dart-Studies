import 'package:flutter/material.dart';
import 'package:flutter_aula03/widget_table.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Aula 3",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        home: WidgetBasics());
  }
}

class WidgetBasics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Widgets Básicos"),
        ),
        body: widgetTable());
  }
}
