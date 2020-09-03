import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:kundenberatung/vivek/customTextField.dart';

class CustomerData1 extends StatefulWidget {
  @override
  _CustomerData1State createState() => _CustomerData1State();
}

class _CustomerData1State extends State<CustomerData1> {
  bool _checked = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/1599150495.jpeg'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: EdgeInsets.all(10),
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
                    children: <Widget>[
                      Expanded(
                        child: CoustomTextField(
                          hintText: "Name*:",
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CoustomTextField(
                          hintText: "Surname*:",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: CoustomTextField(
                          hintText: "sfvsv*:",
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CoustomTextField(
                          hintText: "sdfd*:",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: CoustomTextField(
                          hintText: "df*:",
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CoustomTextField(
                          hintText: "rtrtg*:",
                        ),
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
                                Text('Gedfs*:'),
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
                  Container(
                    height: height * 0.4,
                    width: width,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: TextFormField(
                      cursorColor: Color(0xFF2A2AC0),
                      keyboardType: TextInputType.multiline,
                      maxLines: 30,
                      decoration: InputDecoration(
                          suffixIcon: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 15,
                                  backgroundColor: Color(0xff002646),
                                  child: Image.asset("assets/Group -49.png", height: 20,))
                            ],
                          ),
                          border: InputBorder.none,
                          hintText: 'edfnienfiowsemf',
                          hintStyle: TextStyle(fontSize: 16)),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Card(
                        shape: StadiumBorder(side: BorderSide(width: 0.2)),
                        child: Container(
                            padding: EdgeInsets.all(18),
                            width: width * 0.3,
                            child: Center(child: Text('asndifws'))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: height * 0.15,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
