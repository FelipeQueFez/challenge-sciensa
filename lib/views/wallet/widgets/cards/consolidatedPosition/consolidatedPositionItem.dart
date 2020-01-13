import 'package:challengesciensa/appConfig.dart';
import 'package:challengesciensa/themes/colors.dart';
import 'package:flutter/material.dart';

class ConsolidatedPositionItem extends StatelessWidget {
  const ConsolidatedPositionItem({
    Key key,
    @required this.ac,
    @required this.colorBar,
    @required this.descriptionInvestiment,
    @required this.quantityActive,
    @required this.grossBalance,
  }) : super(key: key);

  final AppConfig ac;
  final Color colorBar;
  final String descriptionInvestiment;
  final String quantityActive;
  final String grossBalance;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ac.rH(10),
        color: Color(0xffF7F9FC),
        child: Row(children: <Widget>[
          SizedBox(
              width: 5,
              child: Container(
                color: colorBar,
              )),
          Container(
            width: ac.rW(25),
            child: Padding(
                padding: EdgeInsets.only(left: ac.rW(2)),
                child: Text(
                  descriptionInvestiment,
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                )),
          ),
          Container(
              width: ac.rW(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Qtde",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: colorSubTitleIndicator)),
                  Text(quantityActive,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: colorTitleIndicator))
                ],
              )),
          Container(
            width: ac.rW(39),
            child: Padding(
                padding: EdgeInsets.only(left: ac.rW(2)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Saldo Bruto",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: colorSubTitleIndicator)),
                    Text(grossBalance,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: colorTitleIndicator))
                  ],
                )),
          ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add, size: 25),
                color: Color(0xff364DCD),
                onPressed: () {},
              )
            ],
          )),
        ]));
  }
}