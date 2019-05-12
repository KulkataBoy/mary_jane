import 'package:flutter/material.dart';
import 'package:flutter_app/style.dart';

void main() {
  runApp(MaterialApp(
    title: 'CorrSurfer',
    initialRoute: '/',
    routes: {
      '/': (context) => Menu(),
      '/NPS': (context) => NewPipelineSurvey(),
    },
    debugShowCheckedModeBanner: false,

  ));
}


class NewPipelineSurvey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
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
      new FlatButton (onPressed: () {Navigator.pushNamed(context, '/NPS');}, child: new Ah1('Tank Survey') )
    ])
    )
    );
  }
}