import 'dart:async';

import 'package:autentication_login/Screens/details/details_screen.dart';
import 'package:autentication_login/Screens/product/components/category_list.dart';
import 'package:autentication_login/Screens/product/components/product_card.dart';
import 'package:autentication_login/componentes/search_box.dart';
import 'package:autentication_login/constants.dart';
import 'package:autentication_login/models/produto.dart';
import 'package:autentication_login/services/produtos_api.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _streamController = StreamController<List<Produto>>();

  @override
  void initState() {
    super.initState();
    _loadProdutos();
  }

  void _loadProdutos() async {
    List<Produto> produtos = await ProdutosAPI.fetchProdutos();
    _streamController.add(produtos);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _streamController.stream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Erro ao Acessar Dados'));
        }

        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        List<Produto> produtos = snapshot.data;
        return buildBody(produtos);
      },
    );
  }

  SafeArea buildBody(List<Produto> produtos) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
          CategoryList(),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: produtos.length,
                    itemBuilder: (context, index) => ProductCard(
                          itemIndex: index,
                          product: produtos[index],
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  produto: produtos[index],
                                ),
                              ),
                            );
                          },
                        )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
