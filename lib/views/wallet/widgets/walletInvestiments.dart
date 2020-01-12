import 'package:challengesciensa/appConfig.dart';
import 'package:challengesciensa/modules/wallet/models/walletInvestimentsModel.dart';
import 'package:challengesciensa/themes/colors.dart';
import 'package:challengesciensa/views/wallet/resources/walletInvestimentsResource.dart';
import 'package:challengesciensa/views/wallet/widgets/charts/indicator.dart';
import 'package:challengesciensa/views/wallet/widgets/charts/pieChart.dart';
import 'package:flutter/material.dart';

class WalletInvestiments extends StatefulWidget {
  final List<WalletInvestimentsModel> walletInvestiments;

  WalletInvestiments({@required this.walletInvestiments});

  @override
  _WalletInvestimentsState createState() => _WalletInvestimentsState();
}

class _WalletInvestimentsState extends State<WalletInvestiments> {
  var _resource = new WalletInvestimentsResource();

  @override
  Widget build(BuildContext context) {
    var _ac = AppConfig(context);

    return Container(
      width: _ac.rW(100),
      height: _ac.rH(60),
      margin: EdgeInsets.fromLTRB(15, _ac.rH(2), 15, _ac.rH(0)),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
      ),
      child: Column(children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(_resource.walletInvestiment,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: colorCardTitle)))),
        Card(
          color: colorCard,
          child: Column(children: <Widget>[
            PieChartSample2(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Indicator(
                color: colorRendaFixa,
                text: 'Renda Fixa',
                subText: '10% | 5 ativos',
              ),
              Indicator(
                color: colorFundos,
                text: 'Fundos',
                subText: '10% | 5 ativos',
              ),
              Indicator(color: colorPrevidencia, text: 'Previdência', subText: '10% | 5 ativos',),
            ]),
            SizedBox(height: 20, child: Container()),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Indicator(
                color: colorAcoesFuturo,
                text: 'Ações/Futuro',
                subText: '10% | 5 ativos',
              ),
              Indicator(
                color: colorTesouro,
                text: 'Tesouro',
                subText: '10% | 2 ativos',
              ),
            ]),
            SizedBox(height: 20, child: Container()),
          ]),
          margin: EdgeInsets.only(top: 20),
        )
      ]),
    );
  }
}
