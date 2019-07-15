import 'package:flutter/material.dart';
import 'package:mary_jane/style.dart';
import 'dart:convert';





void main() {
  final mySurvey = new TestPoint(1, "test", "Annoying one",[new Shunt(1,50,5), new Shunt(2,40,3)],[new Structure(1,'111'), new Structure(2,'222')]);
  print (json.encode(mySurvey));
  runApp(MaterialApp(
    title: 'CorrSurfer',
    initialRoute: '/',
    routes: {
      '/': (context) => Menu(),
      '/NPS': (context) => PointScreen(),
      '/NTS': (context) => NewTankSurvey(),
    },
    debugShowCheckedModeBanner: false,

  ));

}

class PipelineSurveyData {
  int id;
  String name;
  String gpsFormat;
  int creatorId;
  int timeCreated;
  int timeChanged;
  String comment;
  List<Rectifier> rectifierList = new List();
  List<TestPoint> testPointList = new List();
  List<Pipeline> pipelineList = new List();
  List<RefCell> refCellList = new List();
}

class Structure {
  int id;
  String name;
  String color;
  List<int> shuntId = new List();
  List<int> rectId = new List();
  List<int> pipelineId = new List();
  List<int> anodeId = new List();
  List<int> structureId = new List();
  List<PotentialValue> potentialValueList = new List();
  String comment;
  String timeCreated;
  String timeChanged;
  bool connected;



  Structure(this.id, this.timeCreated);
  Map<String, dynamic> toJson() => _structureToJson(this);
}
Map<String, dynamic> _structureToJson(Structure ins) {

  List<Map<String, dynamic>> potentialValues = ins.potentialValueList != null
      ? ins.potentialValueList.map((i) => i.toJson()).toList()
      : null;

return <String, dynamic>{
'id' : ins.id,
'name': ins.name,
'color': ins.color,
'shuntId': ins.shuntId,
'rectId': ins.rectId,
'pipelineId': ins.pipelineId,
'comment': ins.comment,
'timeCreated': ins.timeCreated,
'timeChanged': ins.timeChanged,
'connected': ins.connected,
'potentialValueList': potentialValues,
};
}


class Shunt {
  int id;
  double shuntVoltageDrop;
  double shuntCurrent;
  List<int> anodeId;
  List<int> structureId;
  String comment;
  String timeCreated;
  String timeChanged;

  Shunt(this.id, this.shuntVoltageDrop, this.shuntCurrent); // Change later

  Map<String, dynamic> toJson() => _shuntToJson(this);
}

Map<String, dynamic> _shuntToJson(Shunt ins)

{
  return <String, dynamic>{
    'id': ins.id,
    'shuntVoltageDrop': ins.shuntVoltageDrop,
    'shuntCurrent': ins.shuntCurrent,
    'anodeId': ins.anodeId,
    'structureId': ins.structureId,
    'comment': ins.comment,
    'timeCreated': ins.timeCreated,
    'timeChanged': ins.timeChanged,

  };
}

class Anode {
  int id;
  String type;
  String name;
  String color;
  bool galvanic;
  List<PotentialValue> potentialValueList = new List();
  double current;
  List<int> rectId;
  List<int> shuntId;
  List<int> anodeId;
  List<int> structureId;
  String comment;
  bool connected;
  String timeCreated;
  String timeChanged;


  Anode(this.id);

  Map<String, dynamic> toJson() => _anodeToJson(this);

}

Map<String, dynamic> _anodeToJson(Anode ins) {

  List<Map<String, dynamic>> potentialValues = ins.potentialValueList != null
      ? ins.potentialValueList.map((i) => i.toJson()).toList()
      : null;

  return <String, dynamic>{
    'id' : ins.id,
    'name': ins.name,
    'type': ins.type,
    'color': ins.color,
    'galvanic': ins.galvanic,
    'rectId': ins.rectId,
    'shuntId': ins.shuntId,
    'anodeId': ins.anodeId,
    'current': ins.current,
    'structureId': ins.structureId,
    'comment': ins.comment,
    'timeCreated': ins.timeCreated,
    'timeChanged': ins.timeChanged,
    'connected': ins.connected,
    'potentialValueList': potentialValues,

  };
}

class RefCell {
int id;
String name;
String type;
bool portable;
String calibrationDate;

RefCell(this.id);

Map<String, dynamic> toJson() => _refCellToJson(this);
}
Map<String, dynamic> _refCellToJson(RefCell ins) => <String, dynamic>{
  'id': ins.id,
  'name': ins.name,
  'type': ins.type,
  'portable': ins.portable,
  'calibrationDate': ins.calibrationDate,
};


class TestPoint {
  int id;
  String name;
  String type;
  String typeOther;
  String comment;
  double gpsLat;
  double gpsLon;
  int surveyId;
  List<Shunt> shuntList = new List();
  List<Structure> structureList = new List();
  List<Anode> anodeList = new List();
  List<RefCell> refCellList = new List();
  int timeCreated;
  int timeChanged;
  String surveyDate;
  List<int> pic = new List();

  TestPoint(this.id, this.name, this.type, this.shuntList, this.structureList);   //Need to change later

  Map<String, dynamic> toJson() => _testPointToJson(this);
}

Map<String, dynamic> _testPointToJson(TestPoint ins) {
  List<Map<String, dynamic>> shunts = ins.shuntList != null
      ? ins.shuntList.map((i) => i.toJson()).toList()
      : null;
  List<Map<String, dynamic>> structures = ins.structureList != null
      ? ins.structureList.map((i) => i.toJson()).toList()
      : null;
  List<Map<String, dynamic>> anodes = ins.anodeList != null
      ? ins.anodeList.map((i) => i.toJson()).toList()
      : null;
  List<Map<String, dynamic>> refCells = ins.refCellList != null
      ? ins.refCellList.map((i) => i.toJson()).toList()
      : null;

  return <String, dynamic>{
    'id': ins.id,
    'name': ins.name,
    'type': ins.type,
    'typeOther': ins.typeOther,
    'comment': ins.comment,
    'gpsLat': ins.gpsLat,
    'gpsLon': ins.gpsLon,
    'surveyId': ins.surveyId,
    'shuntList': shunts,
    'structureList': structures,
    'anodeList': anodes,
    'refCellList': refCells,
    'timeCreated': ins.timeCreated,
    'timeChanged': ins.timeChanged,
    'surveyDate': ins.surveyDate,

  };


}
class PotentialValue {
  int id;
  double onValue;
  double offValue;
  String timeMeasured;
  int refCellId;
  double distance;
  bool native;

  PotentialValue(this.id);

  Map<String, dynamic> toJson() => _potentialValueToJson(this);


}

Map<String, dynamic> _potentialValueToJson(PotentialValue ins) => <String, dynamic>{
  'id': ins.id,
  'onValue': ins.onValue,
  'offValue': ins.offValue,
  'timeMeasured': ins.timeMeasured,
  'refCellId': ins.refCellId,
  'distance': ins.distance,
  'native': ins.native,

};


class Pipeline {
  int id;
  String name;
  String lic;
  String lin;
  List<double> gpsLon = new List();
  List<double> gpsLat = new List();

  Pipeline(this.id, this.name);

  Map<String, dynamic> toJson() => _pipelineToJson(this);
}

Map<String, dynamic> _pipelineToJson(Pipeline ins) => <String, dynamic>{
  'id': ins.id,
  'name': ins.name,
  'lic': ins.lic,
  'lin': ins.lin,
  'gpsLon': ins.gpsLon,
  'gpsLat': ins.gpsLat,
};


class Rectifier {
  int id;
  double gpsLat;
  double gpsLon;
  String name;
  String type;
  String brand;
  String serialNumber;
  String model;
  double voltageAC;
  double currentAC;
  double inputVA;
  int phase;
  int cycles;
  String enclosure;
  String dateOfInspection;
  double targetMax;
  double targetMin;
  String timeCreated;
  String timeChanged;
  List<int> pic = new List();
  List<Anode> anodeList = new List();
  List<RectifierCircuit> rectifierCircuitListAsFound = new List();
  List<RectifierCircuit> rectifierCircuitListAsLeft = new List();
  String tapAsFound;
  String tapAsLeft;
  String surveyDate;
  int surveyId;
  String comment;

  Rectifier(this.id,this.timeCreated);
  Map<String, dynamic> toJson() => _rectifierToJson(this);
}

Map<String, dynamic> _rectifierToJson(Rectifier ins) {
  List<Map<String, dynamic>> rectifierCircuitsAsFound = ins.rectifierCircuitListAsFound != null
      ? ins.rectifierCircuitListAsFound.map((i) => i.toJson()).toList()
      : null;
  List<Map<String, dynamic>> rectifierCircuitsAsLeft = ins.rectifierCircuitListAsLeft != null
      ? ins.rectifierCircuitListAsLeft.map((i) => i.toJson()).toList()
      : null;
  List<Map<String, dynamic>> anodes = ins.anodeList != null
      ? ins.anodeList.map((i) => i.toJson()).toList()
      : null;

  return <String, dynamic>{
    'id': ins.id,
    'name': ins.name,
    'type': ins.type,
    'serialNumber': ins.serialNumber,
    'model': ins.model,
    'voltageAC': ins.voltageAC,
    'currentAC': ins.currentAC,
    'inputVA': ins.inputVA,
    'phase': ins.phase,
    'cycles': ins.cycles,
    'enclosure': ins.enclosure,
    'dateOfInspection': ins.dateOfInspection,
    'targetMax': ins.targetMax,
    'targetMin': ins.targetMin,
    'comment': ins.comment,
    'gpsLat': ins.gpsLat,
    'gpsLon': ins.gpsLon,
    'surveyId': ins.surveyId,
    'anodeList': anodes,
    'timeCreated': ins.timeCreated,
    'timeChanged': ins.timeChanged,
    'pic': ins.pic,
    'rectifierCircuitListAsFound': rectifierCircuitsAsFound,
    'rectifierCircuitListAsLeft': rectifierCircuitsAsLeft,
    'tapAsFound': ins.tapAsFound,
    'tapAsLeft': ins.tapAsLeft,

  };
}


class RectifierCircuit {
int id;
bool all;
double currentDC;
double voltageDC;
Shunt shunt;
String comment;

RectifierCircuit(this.id);

Map<String, dynamic> toJson() => _rectifierCircuitToJson(this);
}

Map<String, dynamic> _rectifierCircuitToJson(RectifierCircuit ins) {
     Map<String, dynamic> shunts = ins.shunt != null
        ? ins.shunt.toJson()
        : null;

  return <String, dynamic>{
    'id': ins.id,
    'all': ins.all,
    'currentDC': ins.currentDC,
    'voltageDC': ins.voltageDC,
    'shunt': shunts,
    'comment': ins.comment,
  };
}

class PointScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PointScreenState();
  }
}

class _PointScreenState extends State<PointScreen> {
  var _tpTypes = ['Rupees', 'Dollars', 'Pounds', 'Others'];
  var _currentTPType = '';

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

              child: Card(
                  child: new Container(
                    padding: const EdgeInsets.only(top: 6.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: new Column (
                  children: [new TField('eg. TP-01', 'Name'),new TField('eg. Test Station', 'Type'),



        new Container(
          decoration: new BoxDecoration(

            borderRadius: const BorderRadius.all(
              const Radius.circular(7),
            ),
            border: Border.all(
                color: Colors.black38, width: 1.0),
          ),
          child:  DropdownButton(
                      isExpanded: true,
                      isDense: false,
                      items: _tpTypes.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),

                      onChanged: (String newValueSelected) {
                        // Your code to execute, when a menu item is selected from drop down
                        _onDropDownItemSelected(newValueSelected);
                      },

                      value: _currentTPType,
                      style: new TextStyle(fontSize: 16.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w300, color: Colors.black),

                    ),
)













































                  ]
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
  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentTPType = newValueSelected;
    });
  }

}



class NewTankSurvey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tank Survey"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}


class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CorrSurfer v0.0.1"),
      ),
      body: new Container(
      padding: new EdgeInsets.all(32.0),
    child: new Column (
    children: <Widget>[
      new FlatButton (onPressed: () {Navigator.pushNamed(context, '/NPS');}, child: new Text('Roboto Mono sample',
          style: new TextStyle(
            color: Colors.black87,
            fontFamily: 'LatoRegular',
            fontWeight: FontWeight.w700,
            fontSize: 25.0,
          )), ),
      new FlatButton (onPressed: () {Navigator.pushNamed(context, '/NTS');}, child: new Ah1('Tank Survey') ),
        new Text(
          'FontThin',
          style: TextStyle(fontFamily: 'LatoThin', fontSize: 25.0, fontWeight: FontWeight.w100,),
        ),
    ])
    )
    );
  }
}