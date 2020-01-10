import 'package:challengesciensa/modules/wallet/models/consolidatedPosition.dart';
import 'package:challengesciensa/modules/wallet/models/evolutionPatrimony.dart';
import 'package:challengesciensa/modules/wallet/models/profitabilityWallet.dart';
import 'package:challengesciensa/modules/wallet/models/walletInvestiments.dart';

class InvestimentsModel {
  double availableToInvest;
  double toSettle;
  List<WalletInvestiments> walletInvestiments;
  List<ConsolidatedPosition> consolidatedPosition;
  List<EvolutionPatrimony> evolutionPatrimony;
  List<ProfitabilityWallet> profitabilityWallet;

  InvestimentsModel(
      {this.availableToInvest,
      this.toSettle,
      this.walletInvestiments,
      this.consolidatedPosition,
      this.evolutionPatrimony,
      this.profitabilityWallet}) {
    walletInvestiments = new List<WalletInvestiments>();
    consolidatedPosition = new List<ConsolidatedPosition>();
    evolutionPatrimony = new List<EvolutionPatrimony>();
    profitabilityWallet = new List<ProfitabilityWallet>();
  }

  factory InvestimentsModel.getDataMock() {
    return InvestimentsModel(availableToInvest: 1000.0, toSettle: 100.0);
  }
}
