import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';
import 'package:kundenberatung/helpers/strings.dart';
import 'package:kundenberatung/models/user_detail_options_model.dart';
import 'package:kundenberatung/widgets/checkbox_multi_select.dart';
import 'package:kundenberatung/widgets/ui_designs.dart';


class UserDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UserDetailScreenState();
}

class UserDetailScreenState extends State<UserDetailScreen> {
  bool _checked = true;
  List<UserDetailOptionsModel> optionsList = new List<UserDetailOptionsModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    optionsList.add(UserDetailOptionsModel("this is an option text 1", false));
    optionsList.add(UserDetailOptionsModel("this is an option text 2", false));
    optionsList.add(UserDetailOptionsModel("this is an option text 3", false));
    optionsList.add(UserDetailOptionsModel("this is an option text 4", false));
    optionsList.add(UserDetailOptionsModel("this is an option text 5", false));
    optionsList.add(UserDetailOptionsModel("this is an option text 6", false));
    optionsList.add(UserDetailOptionsModel("this is an option text 7", false));
  }

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
                              height: MediaQuery.of(context).size.height * 0.74,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Djsdc modcmos smosx AJADHIWNDOIDNS?",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  getOptionsList(),
                                  SizedBox(
                                    height: 30,
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
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
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
                                            width: width * 0.3,
                                            child: Row(
                                              children: <Widget>[
                                                CircularCheckBox(
                                                    checkColor: Colors.white,
                                                    activeColor:
                                                        Color(0xff002646),
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
                                                    activeColor:
                                                        Color(0xff002646),
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[Text('asndifws')],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                UIDesigns.myButtonWithBorder("Drucken", () {})
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
                          UIDesigns.myButtonWithBorder("Kundendaten", () {}),
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

  Widget getOptionsList() {
    return GridView.builder(
        itemCount: optionsList.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 4)),
        itemBuilder: (BuildContext context, int index) {
          return Wrap(
            children: [
              CheckBoxMultiSelect(
                  checkBoxTileTitle: '${optionsList[index].optionsName}',
                  value: optionsList[index].isSelected,
                  onChanged: (bool value) {
                    setState(() {
                      optionsList[index].isSelected = value;
                    });
                  }),
            ],
          );
        });
  }
}
