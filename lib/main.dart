import 'package:flutter/material.dart';
import 'package:flutter_app/style.dart';





void main() {
  runApp(MaterialApp(
    title: 'CorrSurfer',
    initialRoute: '/',
    routes: {
      '/': (context) => Menu(),
      '/NPS': (context) => NewPipelineSurvey(),
      '/NTS': (context) => NewTankSurvey(),
    },
    debugShowCheckedModeBanner: false,

  ));
}

class Rectifier {}
class TestPoint {


  
}

class PipelineSurveyData

{
  int id;
  String name;
  String gpsFormat;
  int creatorId;
  int timeCreated;
  int timeChanged;
  List<Rectifier> rectifierList;
  List<TestPoint> testPointList;

}

class NewPipelineSurvey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pipeline Survey"),
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
      new FlatButton (onPressed: () {Navigator.pushNamed(context, '/NPS');}, child: new Ah1('Pipeline Survey') ),
      new FlatButton (onPressed: () {Navigator.pushNamed(context, '/NTS');}, child: new Ah1('Tank Survey') )
    ])
    )
    );
  }
}