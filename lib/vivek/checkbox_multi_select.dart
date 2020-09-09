import 'package:flutter/material.dart';
import 'package:kundenberatung/vivek/custom_checkbox_tile.dart';

class CheckBoxMultiSelect extends StatelessWidget {
  final String checkBoxTileTitle;
  final bool value;
  final void Function(bool) onChanged;

  const CheckBoxMultiSelect(
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
        width: width * 0.32,
        child: CustomCheckboxListTile(
            title: Text(checkBoxTileTitle),
            checkColor: Colors.white,
            dense: true,
            activeColor: Color(0xff002646),
            inActiveColor: Colors.white,
            value: value,
            onChanged: onChanged),
      ),
    );
  }
}
