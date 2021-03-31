import 'dart:convert';

import 'package:flutter_login_signup_ui/models/produto.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ProdutosAPI {
  static Future<List<Produto>> fetchProdutos() async {
    var prefs = await SharedPreferences.getInstance();

    // Se for null retorne "".
    String token = (prefs.getString("token") ?? "");

    var header = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $token"
    };

    var url = Uri.parse(
        'https://www.macoratti.net.br/catalogo/api/produtos/v1/todos');

    var response = await http.get(url, headers: header);

    if (response.statusCode == 200) {
      List listResponse = json.decode(response.body);
      final produtos = <Produto>[];

      for (Map map in listResponse) {
        Produto p = Produto.fromJson(map);
        produtos.add(p);
      }

      return produtos;
    }

    return null;
  }
}
