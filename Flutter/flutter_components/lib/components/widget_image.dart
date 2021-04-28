import 'package:flutter/material.dart';

widgetImage() {
  return Center(
    child: Image.asset(
      "images/coelho_pascoa.jpg",
      height: 300,
      width: 300,
      fit: BoxFit.cover,
    ),
  );
}
