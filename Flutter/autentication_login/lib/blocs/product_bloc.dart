import 'dart:async';

import 'package:autentication_login/models/produto.dart';
import 'package:autentication_login/services/produtos_api.dart';

class ProductBloc {
  final _streamController = StreamController<List<Produto>>();

  get productsStream => _streamController.stream;

  void loadProdutos() async {
    List<Produto> produtos = await ProdutosAPI.fetchProdutos();
    _streamController.add(produtos);
  }

  void dispose() {
    _streamController.close();
  }
}
