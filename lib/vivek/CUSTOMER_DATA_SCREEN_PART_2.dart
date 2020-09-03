import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:kundenberatung/vivek/checkBoxCard.dart';

class CustomerData2 extends StatefulWidget {
  @override
  _CustomerData2State createState() => _CustomerData2State();
}

class _CustomerData2State extends State<CustomerData2> {
  bool _checked = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "DATAJADHIWNDOIDNS",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Djsdc modcmos smosx AJADHIWNDOIDNS?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CheckBoxCard(
                          checkBoxTileTitle: "sdnwidwd efiefn ",
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value;
                            });
                          }),
                      CheckBoxCard(
                          checkBoxTileTitle: "snef qwed dnwidwd",
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CheckBoxCard(
                          checkBoxTileTitle: "sdn jedf dfwed widwd",
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value;
                            });
                          }),
                      CheckBoxCard(
                          checkBoxTileTitle: "sdnw def idwd",
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CheckBoxCard(
                          checkBoxTileTitle: "rtgr rfg sdnwidwd",
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value;
                            });
                          }),
                      CheckBoxCard(
                          checkBoxTileTitle: "ef efer4t4 sdnwidwd",
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CheckBoxCard(
                          checkBoxTileTitle: "rtgr rfg sdnwidwd",
                          value: _checked,
                          onChanged: (value) {
                            setState(() {
                              _checked = value;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Djsdc modcmos smosx AJADHIWNDOIDNS?",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    children: <Widget>[
                      Card(
                        elevation: 2,
                        shape: StadiumBorder(),
                        child: Container(
                            padding: EdgeInsets.all(3),
                            width: width * 0.3,
                            child: Row(
                              children: <Widget>[
                                CircularCheckBox(
                                    checkColor: Colors.white,
                                    activeColor: Color(0xff002646),
                                    value: _checked,
                                    onChanged: (value) {
                                      setState(() {
                                        _checked = value;
                                      });
                                    }),
                                Text("doed"),
                                SizedBox(
                                  width: 10,
                                ),
                                CircularCheckBox(
                                    checkColor: Colors.white,
                                    activeColor: Color(0xff002646),
                                    value: _checked,
                                    onChanged: (value) {
                                      setState(() {
                                        _checked = value;
                                      });
                                    }),
                                Text("doed"),
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Card(
                        elevation: 2,
                        shape: StadiumBorder(
                          side: BorderSide(width: 0.2)
                        ),
                        child: Container(
                            padding: EdgeInsets.all(18),
                            width: width * 0.3,
                            child: Center(child: Text('asndifws'))),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
