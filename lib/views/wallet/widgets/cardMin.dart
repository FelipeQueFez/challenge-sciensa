import 'package:challengesciensa/appConfig.dart';
import 'package:flutter/material.dart';

class CardMin extends StatelessWidget {

  final String title;
  final double value;

  CardMin(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    var _ac = AppConfig(context);

    return Container(
      margin: EdgeInsets.fromLTRB(5, _ac.rH(5), 5, _ac.rH(5)),
      color: Color(0xFFDDDAE0),
    );
  }
}