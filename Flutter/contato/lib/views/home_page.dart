import 'dart:io';

import 'package:contatos/helpers/database_helper.dart';
import 'package:contatos/models/contato.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqlite_api.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DatabaseHelper db = DatabaseHelper();
  List<Contato> contatos = <Contato>[];

  @override
  void initState() {
    super.initState();

    // Contato c = Contato(0, "Maria", "maria@gmail.com", "teste.jpg");
    // Contato c1 = Contato(0, "João", "joão@gmail.com", "teste2.jpg");
    // db.insertContato(c);
    // db.insertContato(c1);

    // db.getContatos().then((lista) => print(lista));

    db.getContatos().then((lista) {
      setState(() {
        contatos = lista;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index) {
          return _listaContatos(context, index);
        },
      ),
    );
  }

  Widget _listaContatos(BuildContext context, int index) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: contatos[index].imagem != null
                        ? FileImage(File(contatos[index].imagem))
                        : AssetImage("images/pessoa.png"),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contatos[index].nome ?? "",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    contatos[index].email ?? "",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
