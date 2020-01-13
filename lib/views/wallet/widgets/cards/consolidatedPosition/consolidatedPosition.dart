import 'package:challengesciensa/appConfig.dart';
import 'package:challengesciensa/modules/wallet/models/consolidatedPositionModel.dart';
import 'package:challengesciensa/themes/colors.dart';
import 'package:challengesciensa/views/wallet/resources/consolidatedPosition.dart';
import 'package:challengesciensa/views/wallet/widgets/cards/consolidatedPosition/consolidatedPositionItem.dart';
import 'package:flutter/material.dart';

class ConsolidatedPosition extends StatefulWidget {
  final List<ConsolidatedPositionModel> consolidatedPosition;

  ConsolidatedPosition({@required this.consolidatedPosition});

  @override
  _ConsolidatedPositionState createState() => _ConsolidatedPositionState();
}

class _ConsolidatedPositionState extends State<ConsolidatedPosition> {
  var _resource = new ConsolidatedPositionResource();

  @override
  Widget build(BuildContext context) {
    var _ac = AppConfig(context);

    return Container(
        margin: EdgeInsets.fromLTRB(15, _ac.rH(4), 15, _ac.rH(0)),
        child: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(_resource.consolidatedPosition,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: colorCardTitle)))),
          Column(
            children: <Widget>[
            ConsolidatedPositionItem(ac: _ac, colorBar: colorFundos, colorLine: Color(0xffF7F9FC), descriptionInvestiment: "Fundos de Investimentos", quantityActive: "5 ativos", grossBalance: "R\$ 3.860.941,34"),
            ConsolidatedPositionItem(ac: _ac, colorBar: colorAcoesFuturo, colorLine: Color(0xffFFFFFF), descriptionInvestiment: "Ações e Futuro", quantityActive: "5 ativos", grossBalance: "R\$ 3.860.941,34"),
            ConsolidatedPositionItem(ac: _ac, colorBar: colorTesouro, colorLine: Color(0xffF7F9FC), descriptionInvestiment: "Tesouro Direto", quantityActive: "5 ativos", grossBalance: "R\$ 3.860.941,34"),
            ConsolidatedPositionItem(ac: _ac, colorBar: colorRendaFixa, colorLine: Color(0xffFFFFFF), descriptionInvestiment: "Rende Fixa", quantityActive: "5 ativos", grossBalance: "R\$ 3.860.941,34"),
            ConsolidatedPositionItem(ac: _ac, colorBar: colorPrevidencia, colorLine: Color(0xffF7F9FC), descriptionInvestiment: "Previdência Privada", quantityActive: "5 ativos", grossBalance: "R\$ 3.860.941,34"),
          ])
        ]));
  }
}
