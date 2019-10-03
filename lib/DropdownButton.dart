import 'package:flutter/material.dart';

class OptionField extends StatelessWidget {
final Function action;
final String defaultValue;
final String currentElement;
final List<String> options;
OptionField(this.action, this.defaultValue, this.currentElement, this.options);

List<DropdownMenuItem<String>> genList(List<String> listOfItems) {
    List<DropdownMenuItem<String>> listOfItemsRes = listOfItems.map((
        String dropDownStringItem) {
      return DropdownMenuItem<String>(
        value: dropDownStringItem,
        child: Text(dropDownStringItem),
      );
    }).toList();
    return listOfItemsRes;


}

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
          items: genList(options),
          hint: new Text(defaultValue),
          onChanged: action,

          value: currentElement,
          style: new TextStyle(fontSize: 16.0, fontFamily: 'LatoRegular', fontWeight: FontWeight.w300, color: Colors.black),
        ),
      ),
    );
  }
}
