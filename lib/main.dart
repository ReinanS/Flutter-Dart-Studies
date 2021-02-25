import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aula 3",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista dinâmica'),
        ),
        body: buildListView(),
      ),
    );
  }

  buildListView() {
    final itens = List<String>.generate(1000, (i) => "Item $i");

    return ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text('${itens[index]}'),
            onTap: () {
              debugPrint('${itens[index]} foi selecionado');
            },
          );
        });
  }
}
