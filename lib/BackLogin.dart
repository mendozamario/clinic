import 'package:flutter/material.dart';

class BackLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        BackGradient(),
      ],
    );
  }
}

class BackGradient extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF468faf),
            Color(0xFF01497c),
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        )
      ),
    );
  }
}