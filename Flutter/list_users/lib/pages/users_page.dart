import 'package:flutter/material.dart';
import 'package:list_users/models/userModel.dart';
import 'package:list_users/pages/detail_page.dart';
import 'package:list_users/services/api.dart';

class UsersPage extends StatefulWidget {
  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
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
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage('http://www.macoratti.net/Imagens/contato1.png'),
          ),
          title: Text(
            users[index].name,
          ),
          subtitle: Text(
            users[index].email,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(users[index])));
          },
        );
      },
    );
  }
}
