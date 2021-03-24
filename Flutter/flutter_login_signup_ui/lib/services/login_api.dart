import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginApi {
  static Future<bool> login(String user, String password) async {
    var url = Uri.parse('https://macoratti.net.br/catalogo/api/contas/login');

    var header = {"Content-Type": "application/json"};

    Map params = {
      "username": user,
      "senha": password,
      "email": user,
    };

    var _body = json.encode(params);
    print("Json Enviado");

    var response = await http.post(url, headers: header, body: _body);

    Map mapResponse = json.decode(response.body);

    String message = mapResponse["message"];
    String token = mapResponse["token"];

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    print('Message: $message');
    print('Token: $token');

    return true;
  }
}
