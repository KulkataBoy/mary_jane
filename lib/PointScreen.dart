import 'package:flutter/material.dart';
import 'package:mary_jane/style.dart';
import 'DropdownButton.dart';
import 'Button.dart';

class NewPointScreen extends StatefulWidget {
  @override
  _NewPointScreenState createState() => _NewPointScreenState();
}

class _NewPointScreenState extends State<NewPointScreen> {
  final List<String> tpTypes = ['Test Station', 'Riser', 'Junction Box', 'Other'];
  String currentType;
  Widget otherTypeField = new Container();
 void test(){ print('hello');}
  void typeSelected(String newValueSelected) {
    setState(() {
      currentType = newValueSelected;
      if (currentType == 'Other') {
        this.otherTypeField = new Container (
            margin: const EdgeInsets.only(top: 4.0, bottom: 13.0),
            child:TField('Type Other'));
      }
      else {
        this.otherTypeField = new Container();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarText("New Point"),
      ),
      body: new Container(
        padding: const EdgeInsets.only(top: 6.0, left: 8.0, right: 8.0, bottom: 16.0),  // Padding for body area
        child: new Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Container( //Status Bar at the top Modified | Created
                margin: const EdgeInsets.only(bottom: 9.0),
                alignment: FractionalOffset.centerLeft,
                child: new Text('Modified | Created:', style: statusText),
              ),

              //-----------------------------------------------------------------------------------------------------------

              new Container( //block of lable and field
                alignment: FractionalOffset.center,

                child: new Card(
                  child: new Container(
                    padding: const EdgeInsets.only(left: 10.0, top: 13.0, right: 10.0, bottom: 10.0),
                    child: new Column (
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          new Container(
                              margin: const EdgeInsets.only(top: 4.0, bottom: 13.0),
                        child: new TFieldLable('Name', 'eg. TP-01')),
                          new Container(
                          alignment: FractionalOffset.centerLeft,
                          child: new FormLabel('Type'),
                        ),
                          new OptionField(typeSelected, 'Select Type', currentType, tpTypes),
                          otherTypeField,
                      new Container(
                  alignment: FractionalOffset.centerLeft,
                  child: new FormLabel('GPS Coordinates'),
                ),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Expanded (
                                flex: 10,
                                  child: new Container(
                                      margin: const EdgeInsets.only(right: 10.0),
                                      child: new TField('Latitude'))),

                              Expanded (
                                  flex: 10,
                                  child: new Container(
                                      margin: const EdgeInsets.only(right: 10.0),
                                      child: new TField('Longitude'))),
                              Expanded (
                                  flex: 4,
                                  child: new Container(
                                      margin: const EdgeInsets.only(right: 10.0),
                                      child: new RegButton(test, Icon(IconData(57783, fontFamily: 'MaterialIcons'))))),
                              Expanded (
                                  flex: 4,
                                  child: new Container(
                                      child: new RegButton(test, Text('...')))),
                            ],
                          ),
                    new Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: new SizedBox(
                      width: double.infinity,
                        height: 45,

                        child: new RegButton(test, Text('+ Add Connection', style: new TextStyle(fontSize: 16.0,
                            fontFamily: 'LatoRegular',
                            fontWeight: FontWeight.w300),)))),
                        ],
                    ),
                  ),
                ),
              ),

              //----------------------------------------------------------------------------------------------------------


            ]
        ),
      ),


    );
  }
}
