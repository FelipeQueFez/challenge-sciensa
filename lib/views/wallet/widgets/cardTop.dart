import 'package:challengesciensa/modules/wallet/models/investimentsModel.dart';
import 'package:challengesciensa/views/wallet/resources/cardTopResource.dart';
import 'package:challengesciensa/views/wallet/widgets/cardMin.dart';
import 'package:flutter/material.dart';

class CardTop extends StatelessWidget {

  final InvestimentsModel model;

  CardTop({@required this.model});

  @override
  Widget build(BuildContext context) {

    var resource = new CardTopResource();

    return ListView(children: <Widget>[
      CardMin(title: resource.availableToInvest, value: model.availableToInvest),
      CardMin(title: resource.toSettle, value: model.toSettle),
    ]);
  }
}