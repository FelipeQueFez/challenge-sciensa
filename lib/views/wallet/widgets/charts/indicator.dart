import 'package:challengesciensa/themes/colors.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final String subText;
  final double size;
  final Color textColor;

  const Indicator({
    Key key,
    this.color,
    this.text,
    this.subText,
    this.size = 8,
    this.textColor = colorTitleIndicator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: <Widget>[
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
            ),
            const SizedBox(
              width: 4,
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.normal, color: textColor),
            ),
            Text(
              subText,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w300, color: colorSubTitleIndicator),
            ),
          ],
        ));
  }
}
