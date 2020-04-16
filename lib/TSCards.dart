import 'package:flutter/material.dart';
import 'package:mary_jane/style.dart';
import 'DropdownButton.dart';
import 'Button.dart';

class TSPipelineCard extends StatefulWidget {
  @override
  _TSPipelineCardState createState() => _TSPipelineCardState();
}

class _TSPipelineCardState extends State<TSPipelineCard> {
  String currentPipeline;
  String currentCableSize;
  String currentCableColor;
  final List<String> cableSizes = [
    '-',
    '1 AVG',
    '2 AVG',
    '4 AVG',
    '6 AVG',
    '8 AVG',
    '10 AVG',
    '12 AVG'
  ];

  final List<String> cableColors = [
    'Orange',
    'Green',
    'Red',
    'White',
    'Blue',
    'Yellow',
    'Black',
    'Purple'
  ];

  final List<String> pipelineList = [
    '63532-21',
    '12126-12',
    '13213-21',
    '89833-23',
    '14312-21',
    '+ Add New'
  ];

  void pipelineSelected(String newValueSelected) {
    setState(() {
      currentPipeline = newValueSelected;
    });}

  void cableSizeSelected(String newValueSelected) {
    setState(() {
      currentCableSize = newValueSelected;
    });}
  void cableColorSelected(String newValueSelected) {
    setState(() {
      currentCableColor = newValueSelected;
    });}

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
                        new SizedBox(
                            child: FlatButton(
                              padding: EdgeInsets.all(1),
                              onPressed: () {},
                              child: new Icon(
                                  IconData(57672, fontFamily: 'MaterialIcons'),
                                  color: Colors.green[400]),
                              shape: new CircleBorder(),
                            ),
                            width: 30),
                        new SizedBox(
                            child: FlatButton(
                              padding: EdgeInsets.all(1),
                              onPressed: () {},
                              child: new Icon(
                                  IconData(57693, fontFamily: 'MaterialIcons'),
                                  color: Colors.red[400]),
                              shape: new CircleBorder(),
                            ),
                            width: 30)
                      ]),
                  new Container(
                      margin: const EdgeInsets.only(top: 0),
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            new Column(children: [
                              new Container(
                                  height: 30,
                                  child: new Row(children: [
                                    SizedBox(
                                        width: 31,
                                        child: new Text('ON:', style: h3)),
                                    SizedBox(
                                        width: 35,
                                        child: RawMaterialButton(
                                          onPressed: () {},
                                          child: new Icon(
                                              IconData(57669,
                                                  fontFamily: 'MaterialIcons'),
                                              color: Colors.blue[400]),
                                          shape: new CircleBorder(),
                                        )),
                                    SizedBox(
                                        width: 85, child: new TFieldSmall('')),
                                  ])),
                              new Container(
                                  height: 30,
                                  margin: const EdgeInsets.only(top: 7.0, bottom: 5.0),
                                  child: new Row(children: [
                                    SizedBox(
                                        width: 31,
                                        child: new Text('OFF:', style: h3)),
                                    SizedBox(
                                        width: 35,
                                        child: RawMaterialButton(
                                          onPressed: () {},
                                          child: new Icon(
                                              IconData(57691,
                                                  fontFamily: 'MaterialIcons'),
                                              color: Colors.blue[400]),
                                          shape: new CircleBorder(),
                                        )),
                                    SizedBox(
                                        width: 85, child: new TFieldSmall('')),
                                  ])),
                            ]),
                            new SizedBox(width: 15),
                            new SizedBox(
                                width: 78,
                                height: 35,
                                child: new RegButton(
                                    () {},
                                    Text(
                                      'Value as...',
                                      style: new TextStyle(
                                          fontSize: 13.0,
                                          fontFamily: 'LatoRegular',
                                          fontWeight: FontWeight.w300),
                                    )))
                          ])),

                  Divider(),
new Container( child: new Column( mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start, children:[
                new Text('Pipeline', style: formLabel),
                      SizedBox(
                          child: OptionField(pipelineSelected,'Select Pipeline',currentPipeline,pipelineList)),
                      new Row (children: [Expanded(flex: 6, child:  new Container(margin: EdgeInsets.only(right: 15), child: new Column (mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start, children: [new Text('Color', style: formLabel), new OptionField(cableColorSelected, '', currentCableColor, cableColors)]))), Expanded(flex: 3, child: new Column (mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start, children: [new Text('Size', style: formLabel), new OptionField(cableSizeSelected, '', currentCableSize, cableSizes)]))]),

                  Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 10),
                      child: new TFieldLable('Cable Tag',''))
                ]))]))));
  }
}
