import 'package:challengesciensa/views/shared/states/DefaultState.dart';
import 'package:challengesciensa/views/wallet/bloc/walletEvent.dart';
import 'package:bloc/bloc.dart';

class WalletBloc extends Bloc<WalletEvent, DefaultState> {
  @override
  DefaultState get initialState => Initial();

  @override
  Stream<DefaultState> mapEventToState(WalletEvent event) {
    // TODO: implement mapEventToState
    return null;
  }
}
