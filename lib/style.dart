import 'package:flutter/material.dart';

class ListOptionSetting {
  // Generates DropdownButtonItem objects for the list of string data.
    ListOptionSetting();


  List<DropdownMenuItem<String>> genList(List<String> listOfItems,
      int typeOfGen) {
    //gen 1 adds Select Type Lable at the begining of the list of data
    List<DropdownMenuItem<String>> listOfItemsRes;
    if (typeOfGen == 1) {
      listOfItemsRes = listOfItems.map((
          String dropDownStringItem) {
        return DropdownMenuItem<String>(
          value: dropDownStringItem,
          child: Text(dropDownStringItem),
        );
      }).toList();
      listOfItemsRes.insert(0, DropdownMenuItem<String>(
        value: 'Select Type',
        child: Text(
            'Select Type', style: new TextStyle(fontFamily: 'LatoRegular',
            fontWeight: FontWeight.w300,
            color: Colors.black54)),
      ));

    }
    return listOfItemsRes;

  }


}

//-----------FONTS-----------------------------------
TextStyle h1 = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);
TextStyle def = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);
TextStyle h2 = new TextStyle(fontSize: 18.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.black);
TextStyle h3 = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w900, color: Colors.black);
TextStyle appBarText = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);
TextStyle statusText = new TextStyle(fontSize: 14.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w200, color: Colors.grey[500]);
TextStyle formLabel = new TextStyle(fontSize: 13.0, fontFamily: 'LatoBold', fontWeight: FontWeight.w900);
TextStyle appBar = new TextStyle(fontSize: 19.0, fontFamily: 'LatoThin', fontWeight: FontWeight.w600);
class TFieldLable extends StatelessWidget {
  final String lable;
  final String hintText;
  TFieldLable(this.lable, this.hintText);
  @override
  Widget build(BuildContext context) {
    return new Column (
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(bottom: 5),
          alignment: FractionalOffset.centerLeft,
          child: new Text(lable, style: formLabel),
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

class TFieldSmall extends StatelessWidget {
  final String hintText;
  TFieldSmall(this.hintText);

  @override
  Widget build(BuildContext context) {
    return new Container(
        alignment: FractionalOffset.center,
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
                  start: 10.0, top: 10.0, end: 10.0, bottom: 1.0),
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

class TFieldConnection extends StatelessWidget {
  final String hintText;
  TFieldConnection(this.hintText);

  @override
  Widget build(BuildContext context) {
    return new Container(
        alignment: FractionalOffset.center,
        child: new TextFormField(
            maxLength: 32,
            style: new TextStyle(fontSize: 13.0,
                fontFamily: 'LatoRegular',
                fontWeight: FontWeight.w300,
                height: 1.9,
                color: Colors.black),
            decoration: new InputDecoration(
              hintText: hintText,
              hintStyle: new TextStyle(fontSize: 13.0,
                  fontFamily: 'LatoRegular',
                  fontWeight: FontWeight.w300),
              counterText: "",
              contentPadding: const EdgeInsetsDirectional.only(
                  start: 10.0, top: 5.0, end: 10.0, bottom: 3.0),
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

class OField extends StatefulWidget {
  final int typeOfGen;
  final String actionType;
  final List<String> listOfItems;
  final String firstElement;
  OField(this.typeOfGen,this.actionType,this.listOfItems,this.firstElement);
  @override
  State<StatefulWidget> createState() {
    return _OFieldState(this.firstElement);
  }
}

class _OFieldState extends State<OField> {
  String currentElement;
  bool actionCheck;
  Function action;
  _OFieldState(this.currentElement);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(top: 4.0, bottom: 13.0),
      padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 16.0, bottom: 8.0),
      decoration: new BoxDecoration(

        borderRadius: const BorderRadius.all(
          const Radius.circular(7),
        ),
        border: Border.all(
            color: Colors.black38, width: 1.0),
      ),
      child:  DropdownButtonHideUnderline (
        child: DropdownButton(
          icon: Icon(Icons.arrow_drop_down, color: Colors.black38),
          isExpanded: true,
          isDense: true,
          items:  new ListOptionSetting().genList(widget.listOfItems,1),

          onChanged: (String newValueSelected) {
           selectActivated(newValueSelected);
          },

          value: currentElement,
          style: new TextStyle(fontSize: 16.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w300, color: Colors.black),

        ),
      ),
    );



  }


  void selectActivated(String newValueSelected) {
    setState(() {
      this.currentElement = newValueSelected;
    });
  }
}