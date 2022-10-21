import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  // Function navigate;
  String buttonName;
  Color buttonColor;

  RoundButton(
      {
        // required this.navigate,
      required this.buttonColor,
      required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            // navigate();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonName,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}