import 'package:autentication_login/Screens/details/components/body.dart';
import 'package:autentication_login/constants.dart';
import 'package:autentication_login/models/produto.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreen extends StatelessWidget {
  final Produto produto;

  DetailScreen({
    this.produto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(
        produto: produto,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: FaIcon(
          FontAwesomeIcons.longArrowAltLeft,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'Back'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.cartPlus,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
