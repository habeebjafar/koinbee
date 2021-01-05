import 'package:flutter/material.dart';
import 'package:koinbee/constants.dart';

class HomeButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const HomeButton({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Source sans pro',
                fontSize: 15.0,
                color: Colors.white,
                letterSpacing: 2,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
