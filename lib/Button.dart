import 'package:flutter/material.dart';

class RegButton extends StatelessWidget {
  final Widget buttonContent;
  final Function action;
  RegButton(this.action, this.buttonContent);
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      padding: const EdgeInsets.all(0),
      textColor: Color.fromRGBO(0, 150, 186, 1.0),
      color: Colors.white,
      onPressed: action,
      child: buttonContent,
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
        const Radius.circular(7),
      ),
              side: BorderSide(color: Colors.blue[400], width: 1.3),
      ),
    );
  }
}
