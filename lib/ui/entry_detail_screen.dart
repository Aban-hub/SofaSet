import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:kundenberatung/helpers/strings.dart';
import 'package:kundenberatung/routers/routers.dart';
import 'package:kundenberatung/vivek/customTextField.dart';
import 'package:kundenberatung/widgets/ui_designs.dart';

class EntryDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EntryDetailScreenState();
}

class EntryDetailScreenState extends State<EntryDetailScreen> {
  bool _checked = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/ic_background_opacity.jpeg"),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              StringConstants.appbarTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
            // centerTitle: true,
            titleSpacing: 250.0,

            leading: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: IconButton(
                      icon: Image.asset('assets/images/ic_menu.png',
                          height: 40, width: 40, fit: BoxFit.fill),
                      onPressed: () {}),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Center(
                    child: Text(
                  StringConstants.appbarTrailing,
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                )),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(right: 70, top: 20, bottom: 30),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            Container(
                              height: MediaQuery.of(context).size.height*0.74,
                              child: Column(
                                children: [
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
                                    height: 15,
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
                                    height: 15,
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
                                    height: 15,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Card(
                                        elevation: 2,
                                        shape: StadiumBorder(),
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                                top: 2,
                                                bottom: 2),
                                            width: width * 0.32,
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
                                    height: 15,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black12),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            cursorColor: Color(0xFF2A2AC0),
                                            keyboardType: TextInputType.multiline,
                                            maxLines: 7,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'edfnienfiowsemf',
                                                hintStyle: TextStyle(fontSize: 16)),
                                          ),
                                        ),
                                        CircleAvatar(
                                            radius: 13,
                                            backgroundColor: Color(0xff002646),
                                            child: Image.asset(
                                              "assets/images/ic_edit.png",
                                              height: 15,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                UIDesigns.myButtonWithBorder("Weiter", () {
                                  Navigator.of(context).pushReplacementNamed(
                                      AppRouters.USER_DETAIL_SCREEN);
                                })
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            height: MediaQuery.of(context).size.height * 0.7,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              // shrinkWrap: true,
                              children: [
                                UIDesigns.addProduct("Produkt"),
                                Divider(
                                  thickness: 1,
                                  color: Colors.grey[600],
                                ),
                                UIDesigns.addProduct("Stil"),
                                Divider(
                                  thickness: 1,
                                  color: Colors.grey[600],
                                ),
                                UIDesigns.addProduct("Bezug"),
                                Divider(
                                  thickness: 1,
                                  color: Colors.grey[600],
                                ),
                                UIDesigns.addProduct("Funktionen"),
                                Divider(
                                  thickness: 1,
                                  color: Colors.grey[600],
                                ),
                                UIDesigns.addProduct("MaBe"),
                                Divider(
                                  thickness: 1,
                                  color: Colors.grey[600],
                                ),
                                UIDesigns.addProduct("Budget"),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          UIDesigns.myButtonWithBorder("Kundendaten", () {
                            Navigator.of(context).pushReplacementNamed(
                                AppRouters.USER_DETAIL_SCREEN);
                          }),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
