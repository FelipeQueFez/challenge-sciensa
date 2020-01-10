import 'package:challengesciensa/modules/wallet/models/investimentsModel.dart';
import 'package:challengesciensa/views/shared/states/DefaultState.dart';
import 'package:challengesciensa/views/wallet/bloc/walletEvent.dart';
import 'package:bloc/bloc.dart';
import 'package:challengesciensa/views/wallet/bloc/walletState.dart';

class WalletBloc extends Bloc<WalletEvent, DefaultState> {
  @override
  DefaultState get initialState => Initial();

  @override
  Stream<DefaultState> mapEventToState(WalletEvent event) async* {

    switch (event.runtimeType) {
      case WalletLoad:
        yield Loading();

        yield WalletLoaded(investiments: InvestimentsModel.getDataMock());
        
        break;
      default:
    }
  }
}
