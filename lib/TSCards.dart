import 'package:flutter/material.dart';
import 'package:mary_jane/style.dart';
import 'DropdownButton.dart';
import 'Button.dart';

class TSPipelineCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      //block of lable and field
      alignment: FractionalOffset.center,

      child: new Card(
          child: new Container(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 13.0, right: 10.0, bottom: 10.0),
              child: new Column(children: [
                new Text('Pipeline#1', style: h2),
                new Container(
                  margin: const EdgeInsets.only(top: 4),
                    child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      Expanded(
                          flex: 6,
                          child: new Column(children: [
                            new Container(child: new Row(children: [
                              SizedBox(width: 32, child: new Text('ON:', style: h3)),
                              SizedBox(width: 35, child: RawMaterialButton(
                                onPressed: () {},
                                child: new Icon(
                                    IconData(57669,
                                        fontFamily: 'MaterialIcons'),
                                    color: Colors.blue[400]),
                                shape: new CircleBorder(),
                              )),
                              SizedBox(width: 75, child: new TFieldConnection('')),
                            ])),
                            new Container (
                                margin: const EdgeInsets.only(
                                    top: 0.0),
                                child: new Row(
                                children: [
                              SizedBox(width: 32, child: new Text('OFF:', style: h3)),
                              SizedBox(width: 35, child: RawMaterialButton(
                                onPressed: () {},
                                child: new Icon(
                                    IconData(57691,
                                        fontFamily: 'MaterialIcons'),
                                    color: Colors.blue[400]),
                                shape: new CircleBorder(),
                              )),
                              SizedBox(width: 75, child: new TFieldConnection('')),
                            ])),
                          ])),
                      Expanded(flex: 1, child: new Text('with', style: h3)),
                      Expanded(flex: 4, child: Container( margin: const EdgeInsets.only(left:10),child: new TFieldConnection('Reference Cell'))),
                          Expanded(flex: 1, child: RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                                IconData(57672,
                                    fontFamily: 'MaterialIcons'),
                                color: Colors.greenAccent[400]),
                            shape: new CircleBorder(),
                          )),
                          Expanded(flex: 1, child: RawMaterialButton(
                            onPressed: () {},
                            child: new Icon(
                                IconData(57693,
                                    fontFamily: 'MaterialIcons'),
                                color: Colors.red[400]),
                            shape: new CircleBorder(),
                          )),


                ])),
                Divider(),
                Container (margin: const EdgeInsets.only(top: 5, bottom: 10) , child: new TField('Pipeline #1')),
                Container (child: new TField('Select Pipeline')),
    ]))));
  }
}
