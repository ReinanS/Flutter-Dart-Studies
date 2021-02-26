import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_aula03/models/userModel.dart';
import 'package:flutter_aula03/services/api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: BuildListView(),
    );
  }
}

class BuildListView extends StatefulWidget {
  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  Future<List<User>> users;

  @override
  void initState() {
    super.initState();
    users = API.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuarios'),
      ),
      body: FutureBuilder(
        future: users,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // return Text(snapshot.data[0].name);
            return listaUsuarios(snapshot.data);
          } else if (snapshot.hasError) {
            return Text(snapshot.error);
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  listaUsuarios(users) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person),
          title: Text(
            users[index].name,
          ),
          subtitle: Text(
            users[index].email,
          ),
        );
      },
    );
  }
}
