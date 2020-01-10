import 'package:flutter/material.dart';

class DefaultErrorWidget extends StatelessWidget {
  final String error;

  const DefaultErrorWidget({Key key, this.error}) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(Icons.error_outline, color: Colors.red, size: 60,),
          SizedBox(height: 18,),
          Text(error != null ? error : "", style: TextStyle(fontSize: 18, color: Colors.black54), textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}