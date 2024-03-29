import 'package:flutter/material.dart';

class OnTapIcon extends StatelessWidget {
  final Icon icon;
  final Function onTap;

  OnTapIcon({
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: icon,
    );
  }
}
