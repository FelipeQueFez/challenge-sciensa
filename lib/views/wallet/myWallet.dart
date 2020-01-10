import 'package:challengesciensa/views/wallet/bloc/walletBloc.dart';
import 'package:challengesciensa/views/wallet/bloc/walletEvent.dart';
import 'package:challengesciensa/views/wallet/myWalletModule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();

  final String text;

  MyWallet({@required this.text});
}

class _MyWalletState extends State<MyWallet> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: LayoutBuilder(
      builder: (context, constraints) => SafeArea(
          bottom: false,
          top: false,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, size: 25),
                onPressed: () {},
              ),
              title: Text(widget.text),
              actions: <Widget>[
                SizedBox(
                  width: 48,
                  height: 48,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/foto.png')),
                ),
              ],
            ),
            body: BlocProvider<WalletBloc>(
              builder: (context) => WalletBloc()..dispatch(WalletLoad()),
              child: WalletModule(walletBloc: new WalletBloc())
            )
          )),
    ));
  }
}
