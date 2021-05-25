import 'dart:io';

import 'package:contatos/models/contato.dart';
import 'package:flutter/material.dart';

class ContatoPage extends StatefulWidget {
  final Contato contato;

  ContatoPage({this.contato});

  @override
  _ContatoPageState createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();

  bool editado = false;
  Contato _editaContato;

  @override
  void initState() {
    super.initState();

    if (widget.contato == null) {
      _editaContato = Contato(0, "", "", null);
    } else {
      _editaContato = Contato.fromMap(widget.contato.toMap());

      _nomeController.text = _editaContato.nome;
      _emailController.text = _editaContato.email;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
            _editaContato.nome == null ? "Novo Contato" : _editaContato.nome),
        centerTitle: true,
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.save),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
