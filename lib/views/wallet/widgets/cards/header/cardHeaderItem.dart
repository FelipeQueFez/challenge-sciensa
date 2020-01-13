import 'package:challengesciensa/appConfig.dart';
import 'package:challengesciensa/themes/colors.dart';
import 'package:flutter/material.dart';

class CardHeaderItem extends StatefulWidget {
  final String title;
  final double value;

  CardHeaderItem({this.title, this.value});

  @override
  _CardHeaderItemState createState() => _CardHeaderItemState();
}

class _CardHeaderItemState extends State<CardHeaderItem> {
  bool showValue = false;

  @override
  Widget build(BuildContext context) {
    var _ac = AppConfig(context);

    return Container(
        alignment: Alignment.centerLeft,
        height: _ac.rH(7),
        margin: EdgeInsets.fromLTRB(15, _ac.rH(2), 15, _ac.rH(0)),
        padding: EdgeInsets.only(left: _ac.rW(3)),
        decoration: BoxDecoration(
          color: colorGrey,
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(widget.title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: colorTitleIndicator)),
            Row(
              children: <Widget>[
                Text("R\$",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: colorTitleIndicator)),
                Expanded(
                    child: Padding(
                        padding:
                            EdgeInsets.only(left: _ac.rW(2)),
                        child: Text(!showValue ? "*****" : widget.value.toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300)))),
                InkWell(
                    onTap: () {
                      setState(() {
                        showValue = !showValue;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: _ac.rW(2)),
                      child: Text(!showValue ? "Mostrar" : "Ocultar",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline)),
                    )),
              ],
            )
          ],
        ));
  }
}
