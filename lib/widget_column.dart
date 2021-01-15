import 'package:flutter/material.dart';

widgetColumn() {
  return Container(
      child: Column(
    children: [
      Container(
          height: 50.0,
          child: Row(
            children: [
              Container(
                child: Text(
                  "Projeto",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                margin: EdgeInsets.only(right: 20.0),
              ),
              Text("Nome",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ],
          )),
      Expanded(child: buildListView())
    ],
  ));
}

buildListView() {
  // Fonte de dados
  final itens = List<String>.generate(1000, (i) => "$i Projeto nome");

  return ListView.builder(
    itemCount: itens.length,
    itemBuilder: (BuildContext context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text('${itens[index]}'),
      );
    },
  );
}
