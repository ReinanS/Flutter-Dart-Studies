import 'dart:io';

import 'package:contatos/models/contato.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// TO-DO
// ADICIONAR ESCOLHA DA CAMERA OU DAS FOTOS DA GALERIA
// INTEGRAR DISCAGEM AUTOMÁTICA AO NÚMERO CADASTRADO

class ContatoPage extends StatefulWidget {
  final Contato contato;

  ContatoPage({this.contato});

  @override
  _ContatoPageState createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _nomeFocus = FocusNode();

  bool editado = false;
  Contato _editaContato;

  @override
  void initState() {
    super.initState();

    if (widget.contato == null) {
      _editaContato = Contato(null, "", "", null);
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
        onPressed: () {
          if (_editaContato.nome != null && _editaContato.nome.isNotEmpty) {
            Navigator.pop(context, _editaContato);
          } else {
            _exibeAviso();
            FocusScope.of(context).requestFocus(_nomeFocus);
          }
        },
        child: Icon(Icons.save),
        backgroundColor: Colors.indigo,
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: _editaContato.imagem != null
                      ? FileImage(File(_editaContato.imagem))
                      : AssetImage("assets/images/pessoa.png"),
                ),
              ),
            ),
            onTap: () {
              ImagePicker.pickImage(source: ImageSource.camera).then((file) {
                if (file == null) return;
                setState(() {
                  _editaContato.imagem = file.path;
                });
              });
            },
          ),
          TextField(
            controller: _nomeController,
            focusNode: _nomeFocus,
            decoration: InputDecoration(labelText: "Nome"),
            onChanged: (text) {
              editado = true;
              setState(() {
                _editaContato.nome = text;
              });
            },
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: "Email"),
            onChanged: (text) {
              editado = true;
              _editaContato.email = text;
            },
          ),
        ],
      ),
    );
  }

  void _exibeAviso() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Nome"),
          content: Text("Informe o nome do contato"),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Fechar")),
          ],
        );
      },
    );
  }
}
