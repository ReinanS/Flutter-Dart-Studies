import 'package:flutter_aula03/models/userModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = "https://jsonplaceholder.typicode.com/";

class API {
  static Future<List<User>> getUsers() async {
    final url = baseUrl + "users";

    final response = await http.get(url);

    if (response.statusCode == 200) {
      Iterable lista = json.decode(response.body);
      List<User> users = lista.map((model) => User.fromMap(model)).toList();
      return users;
    } else {
      throw Exception('Falha ao carregas Usuários');
    }
  }
}
