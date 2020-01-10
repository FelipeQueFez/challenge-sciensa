import 'package:challengesciensa/appConfig.dart';
import 'package:flutter/material.dart';

class WalletInvestiments extends StatefulWidget {

  final List<WalletInvestiments> walletInvestiments;

  WalletInvestiments({@required this.walletInvestiments});

  @override
  _WalletInvestimentsState createState() => _WalletInvestimentsState();
}

class _WalletInvestimentsState extends State<WalletInvestiments> {
  @override
  Widget build(BuildContext context) {
    var _ac = AppConfig(context);

    return Container(
      width: _ac.rW(100),
      height: _ac.rH(10),
      margin: EdgeInsets.fromLTRB(15, _ac.rH(2), 15, _ac.rH(0)),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
      ),
      child: Text("teste"),
    );
  }
}