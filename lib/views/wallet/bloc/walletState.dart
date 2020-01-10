import 'package:challengesciensa/modules/wallet/models/investimentsModel.dart';
import 'package:challengesciensa/views/shared/states/DefaultState.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class WalletLoaded extends DefaultState {

  final InvestimentsModel investiments;

  WalletLoaded({@required this.investiments}) : super([investiments]);

  @override
  String toString() => 'WalletLoaded';
}