import 'package:flutter/material.dart';

class UIDesigns {

  static tabButton(String txt, bool isSelected, VoidCallback onPressedCallback){
    Color myColor = Colors.white;
    if(isSelected) {
      return ButtonTheme(
        height: 50,
        minWidth: 190,
        child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Color(0xFF112948),
            onPressed: onPressedCallback,
            child: Text(txt, style: TextStyle(color: Colors.white),)
        ),
      );
    } else {
      return ButtonTheme(
        height: 50,
        minWidth: 190,
        child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: myColor,
            onPressed: onPressedCallback,
            child: Text(txt)
        ),
      );
    }
  }

  static addProduct(String label){
    return Column(
      children: [
        Text(label, style: TextStyle(color: Colors.grey),),
        ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: 25,
              maxHeight: 45
          ),
          child: Container(
            color: Colors.white,
            child: Container(),
          ),
        )
      ],
    );
  }

  static myButtonWithBorder(String txt, VoidCallback onPressedCallback){
    Color myColor = Colors.white;
    return ButtonTheme(
      height: 50,
      minWidth: 190,
      child: MaterialButton(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Colors.grey)
          ),
          color: myColor,
          onPressed: onPressedCallback,
          child: Text(txt)
      ),
    );
  }

}