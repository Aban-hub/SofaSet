import 'package:flutter/material.dart';

class CoustomTextField extends StatelessWidget {
  final String hintText;

  const CoustomTextField({Key key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(30.0),
              ),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(30.0),
              ),
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
            ),
            hintStyle: TextStyle(color: Color(0xff4A4A49)),
            hintText: hintText,
            filled: true,
            contentPadding: const EdgeInsets.only(left: 10, right: 10),
            fillColor: Colors.white),
      ),
    );
  }
}
