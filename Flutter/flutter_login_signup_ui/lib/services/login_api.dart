import 'dart:convert';

import 'package:flutter_login_signup_ui/models/usuario.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<Usuario> login(String user, String password) async {
    var url = Uri.parse('https://macoratti.net.br/catalogo/api/contas/login');

    var header = {"Content-Type": "application/json"};

    Map params = {
      "username": user,
      "senha": password,
      "email": user,
    };

    Usuario usuario;
    var _body = json.encode(params);

    var response = await http.post(url, headers: header, body: _body);

    if (response.statusCode == 200) {
      Map mapResponse = json.decode(response.body);
      usuario = Usuario.fromJson(mapResponse);
    }

    return usuario;
  }
}
