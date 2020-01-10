import 'package:challengesciensa/views/shared/defaultStates/DefaultErrorWidget.dart';
import 'package:challengesciensa/views/shared/defaultStates/EmptyWidget.dart';
import 'package:challengesciensa/views/shared/defaultStates/LoadingWidget.dart';
import 'package:challengesciensa/views/shared/states/DefaultState.dart';
import 'package:challengesciensa/views/wallet/bloc/walletBloc.dart';
import 'package:challengesciensa/views/wallet/bloc/walletState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletModule extends StatefulWidget {
  final WalletBloc walletBloc;

  WalletModule({Key key, @required this.walletBloc}) : super(key: key);

  @override
  State createState() => _WalletModuleState();
}

class _WalletModuleState extends State<WalletModule> {
  @override
  Widget build(BuildContext context) {
    return Container(child: BlocBuilder<WalletBloc, DefaultState>(
      builder: (context, state) {
        if (state is Initial) {
          return LoadingWidget();
        }
        if (state is Loading) {
          return LoadingWidget();
        }
        if (state is Empty) {
          return EmptyWidget();
        }
        if (state is Error) {
          return DefaultErrorWidget(error: state.error);
        }

        if (state is WalletLoaded) {
          //TODO:implement
        }

        return Center(child: CircularProgressIndicator());
      },
    ));
  }
}
