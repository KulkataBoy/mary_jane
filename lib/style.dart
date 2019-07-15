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



TextStyle h1 = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);
TextStyle def = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);
TextStyle h2 = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);
TextStyle appBarText = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);
TextStyle statusText = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);

class TFieldLable extends StatelessWidget {
  final String lable;
  final String hintText;
  TFieldLable(this.lable, this.hintText);
  @override
  Widget build(BuildContext context) {
    return new Column (
      children: <Widget>[
        new Container(
          alignment: FractionalOffset.centerLeft,
          child: new FormLabel(lable),
        ),
        TField(this.hintText)
      ],
    );
  }
}


//-----------------END-OF-FONTS-----------------

class TField extends StatelessWidget {
  final String hintText;
  TField(this.hintText);

  @override
  Widget build(BuildContext context) {
    return new Container(
        alignment: FractionalOffset.center,
        margin: const EdgeInsets.only(top: 4.0, bottom: 13.0),
        child: new TextFormField(
            maxLength: 32,
            style: new TextStyle(fontSize: 16.0,
                fontFamily: 'LatoRegular',
                fontWeight: FontWeight.w300,
                color: Colors.black),
            decoration: new InputDecoration(
              hintText: hintText,
              hintStyle: new TextStyle(fontSize: 16.0,
                  fontFamily: 'LatoRegular',
                  fontWeight: FontWeight.w300),
              counterText: "",
              contentPadding: const EdgeInsetsDirectional.only(
                  start: 10.0, top: 13.0, end: 10.0, bottom: 10.0),
              filled: true,
              fillColor: Colors.white30,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue[400], width: 1.3),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(7),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black38, width: 1.0),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(7),
                ),
              ),
            )
        )
    );
  }
}