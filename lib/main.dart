import 'package:challengesciensa/themes/colors.dart';
import 'package:challengesciensa/themes/fonts.dart';
import 'package:challengesciensa/views/wallet/myWallet.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: sourceSansPro,
        appBarTheme: AppBarTheme(
            color: colorHeader,
            textTheme: TextTheme(
              title: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
      ),
      home: MyWallet(text: "Minha carteira"),
    );
  }
}
