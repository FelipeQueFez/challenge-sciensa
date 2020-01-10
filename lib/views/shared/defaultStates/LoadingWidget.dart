import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: CircularProgressIndicator())
    );
  }
}