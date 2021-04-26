import 'dart:convert';

import 'package:autentication_login/models/usuario.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

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

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("token", mapResponse["token"]);

      return usuario;
    }

    return null;
  }
}
