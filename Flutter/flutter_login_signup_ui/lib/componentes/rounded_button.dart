import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  RoundedButton({
    this.text,
    this.press,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color)),
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
