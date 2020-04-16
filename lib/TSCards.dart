import 'package:flutter/material.dart';
import 'package:mary_jane/style.dart';
import 'DropdownButton.dart';
import 'Button.dart';

class TSPipelineCard extends StatelessWidget {
  final List<String> cableSize =['-','1 AVG','2 AVG','4 AVG', '6 AVG', '8 AVG', '10 AVG', '12 AVG'];
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
                new Divider(),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  new Text('Reference Cell: ', style: formLabel),
                  new Text(' RC1'),
                   new SizedBox (child: FlatButton(
                    padding: EdgeInsets.all(1),
                                onPressed: () {},
                                child: new Icon(
                                    IconData(57672, fontFamily: 'MaterialIcons'),
                                    color: Colors.green[400]),
                                shape: new CircleBorder(),
                              ), width:30),
                              new SizedBox (child: FlatButton(
                    padding: EdgeInsets.all(1),
                                onPressed: () {},
                                child: new Icon(
                                    IconData(57693, fontFamily: 'MaterialIcons'),
                                    color: Colors.red[400]),
                                shape: new CircleBorder(),
                              ), width:30)
                  
                  ]),
                new Container(
                  margin: const EdgeInsets.only(top: 4),
                    child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            new Column(children: [
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
                              SizedBox(width: 75, height: 35.0, child: new TFieldSmall('')),
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
                              SizedBox(width: 75, height: 35.0, child: new TFieldSmall('')),
                            ])),
                          ]),
                          new SizedBox(width: 15),
                                          new SizedBox(
                                          width: 78,
                                          height: 35,
                                          child: new RegButton(
                                              (){},
                                              Text(
                                                'Value as...',
                                                style: new TextStyle(
                                                    fontSize: 13.0,
                                                    fontFamily: 'LatoRegular',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )))
                ])),
                Divider(),
                new Row(children: <Widget>[Expanded(flex:3, child: OptionField()),Expanded(flex: 1, child:new TField('Size'))],),
                Container (margin: const EdgeInsets.only(top: 5, bottom: 10) , child: new TField('Pipeline #1')),
                Container (child: new TField('Select Pipeline')),
    ]))));
  }
}
