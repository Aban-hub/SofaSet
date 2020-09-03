import 'package:flutter/material.dart';
import 'package:kundenberatung/vivek/customCheckBoxListTile.dart';

class CheckBoxCard extends StatelessWidget {
  final String checkBoxTileTitle;
  final bool value;
  final void Function(bool) onChanged;

  const CheckBoxCard(
      {Key key,
      this.checkBoxTileTitle,
      this.value,
      this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
      shape: StadiumBorder(),
      child: Container(
        width: width * 0.3,
        child: CustomCheckboxListTile(
          
            title: Text(checkBoxTileTitle),
            checkColor: Colors.white,
            activeColor: Color(0xff002646),
            value: value,
            onChanged: onChanged),
      ),
    );
  }
}
