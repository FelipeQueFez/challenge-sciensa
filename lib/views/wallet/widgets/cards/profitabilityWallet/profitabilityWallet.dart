import 'package:challengesciensa/appConfig.dart';
import 'package:challengesciensa/modules/wallet/models/profitabilityWalletModel.dart';
import 'package:challengesciensa/themes/colors.dart';
import 'package:challengesciensa/views/wallet/resources/profitabilityWalletResource.dart';
import 'package:challengesciensa/views/wallet/widgets/cards/profitabilityWallet/charts/lineChart.dart';
import 'package:flutter/material.dart';

class ProfitabilityWallet extends StatefulWidget {
  final List<ProfitabilityWalletModel> profitabilityWallet;

  ProfitabilityWallet({@required this.profitabilityWallet});

  @override
  _ProfitabilityWalletState createState() => _ProfitabilityWalletState();
}

class _ProfitabilityWalletState extends State<ProfitabilityWallet> {
  var _resource = new ProfitabilityWalletResource();

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
                  child: Text(_resource.profitabilityWallet,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: colorCardTitle)))),
          LineChartCustom()
        ]));
  }
}
