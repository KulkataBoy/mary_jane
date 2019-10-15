import 'package:flutter/material.dart';
import 'package:mary_jane/style.dart';
import 'DropdownButton.dart';
import 'Button.dart';
import 'TSCards.dart';

Map<String, List<String>> supportedTypes = {
  'Test Station': ['Pipeline', 'Shunt', 'Anode', 'Coupon'],
  'Riser': ['Header', 'Isolating Kit', 'Facility'],
  'Junction Box': ['Pipeline', 'Shunt', 'Anode', 'Coupon']
};

class Connection {
  //class connection created when new connection is added to the screen. used as 1st stage before saving data to the main file
  int id;
  int connectionType;
  int parentType;
  Widget connectionCard;

  Connection(this.id, this.connectionType, this.parentType);

  Widget assignCard(int connectionType, int parentType) {
    Widget returnCard;
    if (connectionType == 1 && parentType == 1) {
      returnCard = new TSPipelineCard();
    }
    return returnCard;
  }
}

class NewPointScreen extends StatefulWidget {
  @override
  _NewPointScreenState createState() => _NewPointScreenState();
}

class _NewPointScreenState extends State<NewPointScreen> {
  final List<String> tpTypes = [
    'Test Station',
    'Riser',
    'Junction Box',
    'Other'
  ];
  String currentType;
  List<Connection> allConnection = [new Connection(0, 1, 1)];
  int connectionCardIDCount = 0;
  Widget otherTypeField =
      new Container(); // empty when Other option is not Selected
  List<Widget> connectionCards = [
    new TSPipelineCard()
  ]; // List of connection cards, displayed on the screen

  void test() {
    print('hello');
  }

  void addConnection(int connectionType, int parentType) {
    connectionCardIDCount++;
    Navigator.of(context, rootNavigator: true).pop('/NTS'); //Remove Dialog Screen. Check when root Navigator changes!!!!
    allConnection
        .add(new Connection(connectionCardIDCount, connectionType, parentType));
    print(allConnection[1].id);
    setState(() {
      connectionCards
          .add(allConnection.first.assignCard(connectionType, parentType));
    });
  }

  void optionsConnection() {
    List<SimpleDialogOption> genOptionList(List<String> listOfItems) {
      //Generate list of options based on the list of string provided for the Dialog screen
      List<SimpleDialogOption> listOfOptions =
          listOfItems.map((String optionItem) {
        return SimpleDialogOption(
          onPressed: () {
            addConnection(1, 1);
          },
          child: Text(optionItem),
        );
      }).toList();
      return listOfOptions;
    }

    if (currentType != null) {
      showDialog(
          // displays dialog screen
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: Text('Choose an Option'),
              children: genOptionList(supportedTypes[currentType]),
            );
          });
    }
  }

  void typeSelected(String newValueSelected) {
    setState(() {
      currentType = newValueSelected;
      if (currentType == 'Other') {
        this.otherTypeField = new Container(
            margin: const EdgeInsets.only(top: 4.0, bottom: 13.0),
            child: TField('Type Other'));
      } else {
        this.otherTypeField = new Container();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: AppBarText("New Test Point"),
      ),
      body: new ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: const EdgeInsets.only(
              top: 6.0,
              left: 8.0,
              right: 8.0,
              bottom: 16.0), // Padding for body area
          itemCount: connectionCards.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Container(
                      //Status Bar at the top Modified | Created
                      margin: const EdgeInsets.only(bottom: 9.0),
                      alignment: FractionalOffset.centerLeft,
                      child: new Text('Modified | Created:', style: statusText),
                    ),

                    //-----------------------------------------------------------------------------------------------------------

                    new Container(
                        //block of lable and field
                        alignment: FractionalOffset.center,
                        child: new Column(children: [
                          new Card(
                            child: new Container(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 13.0,
                                  right: 10.0,
                                  bottom: 10.0),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  new Container(
                                      margin: const EdgeInsets.only(
                                          top: 4.0, bottom: 13.0),
                                      child: new TFieldLable(
                                          'Test Point Name', 'eg. TP-01')),
                                  new Container(
                                    alignment: FractionalOffset.centerLeft,
                                    child: new FormLabel('Test Point Type'),
                                  ),
                                  new OptionField(typeSelected, 'Select Type',
                                      currentType, tpTypes),
                                  otherTypeField,
                                  new Container(
                                    alignment: FractionalOffset.centerLeft,
                                    child: new FormLabel('GPS Coordinates'),
                                  ),
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          flex: 10,
                                          child: new Container(
                                              margin: const EdgeInsets.only(
                                                  right: 10.0),
                                              child: new TField('Latitude'))),
                                      Expanded(
                                          flex: 10,
                                          child: new Container(
                                              margin: const EdgeInsets.only(
                                                  right: 10.0),
                                              child: new TField('Longitude'))),
                                      Expanded(
                                          flex: 4,
                                          child: new Container(
                                              margin: const EdgeInsets.only(
                                                  right: 10.0),
                                              child: new RegButton(
                                                  test,
                                                  Icon(IconData(57783,
                                                      fontFamily:
                                                          'MaterialIcons'))))),
                                      Expanded(
                                          flex: 4,
                                          child: new Container(
                                              child: new RegButton(
                                                  test, Text('...')))),
                                    ],
                                  ),
                                  new Container(
                                      margin: const EdgeInsets.only(top: 10.0),
                                      child: new SizedBox(
                                          width: double.infinity,
                                          height: 45,
                                          child: new RegButton(
                                              optionsConnection,
                                              Text(
                                                '+ Add Connection',
                                                style: new TextStyle(
                                                    fontSize: 16.0,
                                                    fontFamily: 'LatoRegular',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )))),
                                ],
                              ),
                            ),
                          ),
                        ])),

                    //----------------------------------------------------------------------------------------------------------
                  ]);
            } else
              return connectionCards[index - 1];
          }),
    );
  }
}
