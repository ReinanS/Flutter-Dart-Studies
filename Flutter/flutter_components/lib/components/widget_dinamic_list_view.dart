import 'package:flutter/material.dart';

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
