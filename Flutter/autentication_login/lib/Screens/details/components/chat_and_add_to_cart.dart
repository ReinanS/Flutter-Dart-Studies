import 'package:autentication_login/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatAndAddToCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: <Widget>[
          FaIcon(
            FontAwesomeIcons.comment,
            size: 18,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          TextButton.icon(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.shoppingCart,
              color: Colors.black,
              size: 18,
            ),
            label: Text(
              "Add to Cart",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
