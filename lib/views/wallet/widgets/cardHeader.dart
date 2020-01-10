import 'package:challengesciensa/modules/wallet/models/investimentsModel.dart';
import 'package:challengesciensa/views/wallet/resources/cardTopResource.dart';
import 'package:challengesciensa/views/wallet/widgets/cardHeaderItem.dart';
import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {

  final InvestimentsModel model;

  CardHeader({@required this.model});

  @override
  Widget build(BuildContext context) {

    var resource = new CardTopResource();

    return ListView(children: <Widget>[
      CardHeaderItem(title: resource.availableToInvest, value: model.availableToInvest),
      CardHeaderItem(title: resource.toSettle, value: model.toSettle),
    ]);
  }
}