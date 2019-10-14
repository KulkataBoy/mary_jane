import 'package:flutter/material.dart';
import 'package:mary_jane/style.dart';
import 'DropdownButton.dart';
import 'Button.dart';

class TSPipelineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container( //block of lable and field
      alignment: FractionalOffset.center,

      child: new Card(
        child: new Container(
          padding: const EdgeInsets.only(left: 10.0, top: 13.0, right: 10.0, bottom: 10.0),
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
              Expanded (
              flex: 1,
              child: new Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: new TFieldLable('Connection Name', 'Connection #1'))),

          Expanded (
              flex: 1,
              child: new Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: new TFieldLable('Connection Type', 'Pipeline')
              ))])
          ),
      ),
    );
  }
}
