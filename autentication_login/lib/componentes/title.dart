import 'package:flutter/material.dart';

Widget title(String title) {
  return Container(
    margin: EdgeInsets.only(left: 40),
    alignment: Alignment.centerLeft,
    child: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontSize: 14,
      ),
    ),
  );
}
