import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// TO-DO
// Atualizar chamada da instancia do Firestore de forma apropriada
// Fazer um cadastro de livros

Future<void> main() async {
  runApp(MaterialApp(
    title: "Cadastro",
    debugShowCheckedModeBanner: false,
    home: Container(),
  ));

  // var db = Firestore.instance;

  // await db.collection("produtos").snapshots().listen((resultado) {
  //   resultado.documents.forEach((d) {
  //     print(d.data);
  //   });
  // });

  // db.collection("produtos").document("produto1").setData({
  //   "nome": "cadeno",
  //   "preço": 10.99,
  //   "ativo": true,
  // });

  // db.collection("produtos").document("produto1").updateData({
  //   "nome": "lápis",
  //   "preço": 10.99,
  //   "ativo": true,
  // });

  // QuerySnapshot resultado;
  // resultado = await db.collection("produtos").getDocuments();

  // resultado.documents.forEach((d) {
  //   // print(d.documentID);
  //   // print(d.data);

  //   d.reference.updateData({
  //     "ativo": false,
  //   });
  // });

  // DocumentSnapshot resultadoDocumento =
  //     await db.collection("produtos").document("produto1").get();

  // print(resultadoDocumento.documentID);
  // print(resultadoDocumento.data);
}
