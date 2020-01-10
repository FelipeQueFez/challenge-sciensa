import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String error;

  const EmptyWidget({Key key, this.error}) : super(key: key);

  Widget build(BuildContext context) {
    return Center(child: Text("Vazio", style: TextStyle(color: Colors.black)));
  }
}