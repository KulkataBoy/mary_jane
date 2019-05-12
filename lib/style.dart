import 'package:flutter/material.dart';
class Ah1 extends StatelessWidget {
  final String _ah1Text;
  Ah1(this._ah1Text);
  @override
  Widget build(BuildContext context) {
    return new Text (_ah1Text,
        style: new TextStyle(fontSize: 30.0), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,);
  }
}

class Ah2 extends StatelessWidget {
  final String _ah2Text;
  Ah2(this._ah2Text);
  @override
  Widget build(BuildContext context) {
    return new Text (_ah2Text,
        style: new TextStyle(fontSize: 30.0), overflow: TextOverflow.ellipsis);
  }
}