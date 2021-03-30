import 'dart:convert';

import 'package:flutter_login_signup_ui/models/produto.dart';
import 'package:http/http.dart' as http;

class ProdutosAPI {
  static Future<List<Produto>> fetchProdutos() async {
    var url = Uri.parse(
        'https://www.macoratti.net.br/catalogo/api/produtos/v2/todos');

    var response = await http.get(url);

    if (response.statusCode != 200) return null;

    List listResponse = json.decode(response.body);

    final produtos = <Produto>[];

    for (Map map in listResponse) {
      Produto p = Produto.fromJson(map);
      produtos.add(p);
    }

    return produtos;
  }
}
