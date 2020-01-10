import 'package:equatable/equatable.dart';

abstract class WalletEvent extends Equatable {
  WalletEvent([List props = const []]) : super(props);
}

class WalletLoad extends WalletEvent {
  @override
  String toString() => "WalletLoad";
}

