import 'package:challengesciensa/appConfig.dart';
import 'package:challengesciensa/themes/colors.dart';
import 'package:flutter/material.dart';

class CardMin extends StatelessWidget {
  final String title;
  final double value;

  CardMin({this.title, this.value});

  @override
  Widget build(BuildContext context) {
    var _ac = AppConfig(context);

    return Container(
      width: _ac.rW(100),
      height: _ac.rH(10),
      margin: EdgeInsets.fromLTRB(15, _ac.rH(2), 15, _ac.rH(0)),
      decoration: BoxDecoration(
        color: colorGrey,
        borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
      ),
      child: Text(title),
    );
  }
}
