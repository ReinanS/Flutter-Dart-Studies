import 'package:flutter/material.dart';

class WidgetCorPreferida extends StatefulWidget {
  WidgetCorPreferida({Key key}) : super(key: key);

  @override
  _WidgetCorPreferidaState createState() => _WidgetCorPreferidaState();
}

class _WidgetCorPreferidaState extends State<WidgetCorPreferida> {
  String nomeCor = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cor Preferida'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String texto) {
                setState(() {
                  nomeCor = texto;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'A sua cor favorita é: $nomeCor',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
