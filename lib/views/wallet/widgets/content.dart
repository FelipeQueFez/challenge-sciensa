import 'package:challengesciensa/modules/wallet/models/investimentsModel.dart';
import 'package:challengesciensa/views/wallet/resources/cardTopResource.dart';
import 'package:challengesciensa/views/wallet/widgets/cards/consolidatedPosition/consolidatedPosition.dart';
import 'package:challengesciensa/views/wallet/widgets/cards/header/cardHeaderItem.dart';
import 'package:challengesciensa/views/wallet/widgets/cards/walletInvestiments/walletInvestiments.dart';
import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  final InvestimentsModel model;

  Content({@required this.model});

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    var resource = new CardTopResource();

    return ListView(children: <Widget>[
      CardHeaderItem(title: resource.availableToInvest, value: widget.model.availableToInvest),
      CardHeaderItem(title: resource.toSettle, value: widget.model.toSettle),
      WalletInvestiments(walletInvestiments: widget.model.walletInvestiments),
      ConsolidatedPosition(consolidatedPosition: widget.model.consolidatedPosition)
    ]);
  }
}
