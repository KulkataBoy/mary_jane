import 'package:flutter/material.dart';

//-----------FONTS-----------------------------------

class Ah1 extends StatelessWidget {
  final String _ah1Text;
  Ah1(this._ah1Text);
  @override
  Widget build(BuildContext context) {
    return new Text (_ah1Text,
        style: new TextStyle(fontSize: 30.0,), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,);
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

class FormLabel extends StatelessWidget {
  final String labelText;
  FormLabel(this.labelText);
  @override
  Widget build(BuildContext context) {
    return new Text (labelText,
        style: new TextStyle(fontSize: 13.0, fontFamily: 'LatoBold', fontWeight: FontWeight.w900), overflow: TextOverflow.ellipsis);
  }
}

class AppBarText extends StatelessWidget {
  final String _AppBarText;
  AppBarText(this._AppBarText);
  @override
  Widget build(BuildContext context) {
    return new Text (_AppBarText,
        style: new TextStyle(fontSize: 19.0, fontFamily: 'LatoThin', fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis);
  }
}

TextStyle statusText = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);

//-----------------END-OF-FONTS-----------------