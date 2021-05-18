import 'package:autentication_login/constants.dart';
import 'package:autentication_login/models/produto.dart';
import 'package:autentication_login/pages/details/components/chat_and_add_to_cart.dart';
import 'package:autentication_login/pages/details/components/list_of_colors.dart';
import 'package:autentication_login/pages/details/components/product_image.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final Produto produto;

  Body({
    this.produto,
  });

  @override
  _BodyState createState() => _BodyState(produto: produto);
}

class _BodyState extends State<Body> {
  Produto produto;

  _BodyState({
    this.produto,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '${produto.produtoId}',
                      child: ProductPoster(
                        size: size * 0.7,
                        image: produto.imagemUrl,
                      ),
                    ),
                  ),
                  ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      produto.nome,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    'R\$ ${produto.preco}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kSecondColor,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      produto.descricao,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
            ChatAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
