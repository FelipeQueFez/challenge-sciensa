import 'package:challengesciensa/modules/wallet/models/consolidatedPositionModel.dart';
import 'package:challengesciensa/modules/wallet/models/evolutionPatrimonyModel.dart';
import 'package:challengesciensa/modules/wallet/models/profitabilityWalletModel.dart';
import 'package:challengesciensa/modules/wallet/models/walletInvestimentsModel.dart';

class InvestimentsModel {
  double availableToInvest;
  double toSettle;
  List<WalletInvestimentsModel> walletInvestiments;
  List<ConsolidatedPositionModel> consolidatedPosition;
  List<EvolutionPatrimonyModel> evolutionPatrimony;
  List<ProfitabilityWalletModel> profitabilityWallet;

  InvestimentsModel(
      {this.availableToInvest,
      this.toSettle,
      this.walletInvestiments,
      this.consolidatedPosition,
      this.evolutionPatrimony,
      this.profitabilityWallet}) {
    walletInvestiments = new List<WalletInvestimentsModel>();
    consolidatedPosition = new List<ConsolidatedPositionModel>();
    evolutionPatrimony = new List<EvolutionPatrimonyModel>();
    profitabilityWallet = new List<ProfitabilityWalletModel>();
  }

  factory InvestimentsModel.getDataMock() {
    return InvestimentsModel(availableToInvest: 1000.0, toSettle: 100.0);
  }
}
