import 'package:flutter/material.dart';
import 'package:kundenberatung/helpers/strings.dart';
import 'package:kundenberatung/models/entry_steps_model.dart';
import 'package:kundenberatung/routers/routers.dart';
import 'package:kundenberatung/ui/budget_screen.dart';
import 'package:kundenberatung/ui/feature_screen.dart';
import 'package:kundenberatung/ui/material_screen.dart';
import 'package:kundenberatung/ui/product_screen.dart';
import 'package:kundenberatung/ui/size_screen.dart';
import 'package:kundenberatung/ui/style_screen.dart';
import 'package:kundenberatung/widgets/ui_designs.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardScreenState();
}

class DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  var tabIndex = 0;
  bool tabRefresh = true;

  static List<EntryStepsModel> stepsStatus = new List();
  static List<Widget> entryTabs = new List();

  @override
  void initState() {
    super.initState();
    stepsStatus.add(EntryStepsModel("Produkt", "selected"));
    stepsStatus.add(EntryStepsModel("Stil", "notSelected"));
    stepsStatus.add(EntryStepsModel("Bezug", "notSelected"));
    stepsStatus.add(EntryStepsModel("Funktionen", "notSelected"));
    stepsStatus.add(EntryStepsModel("MaBe", "notSelected"));
    stepsStatus.add(EntryStepsModel("Budget", "notSelected"));
    entryTabs = getTabDesigns();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/ic_background_opacity.jpeg"),
                fit: BoxFit.cover)),
        child: Scaffold(
          key: _drawerKey,
          backgroundColor: Colors.transparent,
          drawer: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Color(0xFF112948),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: new Text(
                            "Neue Auswahi",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: new Text(
                            "Logout",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
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
                      onPressed: () {
                        _drawerKey.currentState.openDrawer();
                      }),
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
              ),
              IconButton(
                icon: Icon(
                  Icons.sync,
                  color: Colors.green,
                ),
                onPressed: () {
                  // do something
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(right: 50, top: 20, bottom: 30),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.63,
                              child: tabRefresh
                                  ? getTabScreenAtPosition(tabIndex)
                                  : Container(),
                            ),
                            Container(
                              height: 133,
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      UIDesigns.tabButton(
                                          stepsStatus[0].getStepName,
                                          stepsStatus[0].getStatus, () {
                                        setState(() {
                                          tabIndex = 0;
                                          tabRefresh = true;

                                          stepsStatus[0].status = "selected";
                                          stepsStatus[1].status = "notSelected";
                                          stepsStatus[2].status = "notSelected";
                                          stepsStatus[3].status = "notSelected";
                                          stepsStatus[4].status = "notSelected";
                                          stepsStatus[5].status = "notSelected";
                                        });
                                      }),
                                      UIDesigns.tabButton(
                                          stepsStatus[1].getStepName,
                                          stepsStatus[1].getStatus, () {
                                        setState(() {
                                          tabIndex = 1;
                                          tabRefresh = true;

                                          stepsStatus[0].status = "completed";
                                          stepsStatus[1].status = "selected";
                                          stepsStatus[2].status = "notSelected";
                                          stepsStatus[3].status = "notSelected";
                                          stepsStatus[4].status = "notSelected";
                                          stepsStatus[5].status = "notSelected";
                                        });
                                      }),
                                      UIDesigns.tabButton(
                                          stepsStatus[2].getStepName,
                                          stepsStatus[2].getStatus, () {
                                        setState(() {
                                          tabIndex = 2;
                                          tabRefresh = true;

                                          stepsStatus[0].status = "completed";
                                          stepsStatus[1].status = "completed";
                                          stepsStatus[2].status = "selected";
                                          stepsStatus[3].status = "notSelected";
                                          stepsStatus[4].status = "notSelected";
                                          stepsStatus[5].status = "notSelected";
                                        });
                                      }),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      UIDesigns.tabButton(
                                          stepsStatus[3].getStepName,
                                          stepsStatus[3].getStatus, () {
                                        setState(() {
                                          tabIndex = 3;
                                          tabRefresh = true;

                                          stepsStatus[0].status = "completed";
                                          stepsStatus[1].status = "completed";
                                          stepsStatus[2].status = "completed";
                                          stepsStatus[3].status = "selected";
                                          stepsStatus[4].status = "notSelected";
                                          stepsStatus[5].status = "notSelected";
                                        });
                                      }),
                                      UIDesigns.tabButton(
                                          stepsStatus[4].getStepName,
                                          stepsStatus[4].getStatus, () {
                                        setState(() {
                                          tabIndex = 4;
                                          tabRefresh = true;

                                          stepsStatus[0].status = "completed";
                                          stepsStatus[1].status = "completed";
                                          stepsStatus[2].status = "completed";
                                          stepsStatus[3].status = "completed";
                                          stepsStatus[4].status = "selected";
                                          stepsStatus[5].status = "notSelected";
                                        });
                                      }),
                                      UIDesigns.tabButton(
                                          stepsStatus[5].getStepName,
                                          stepsStatus[5].getStatus, () {
                                        setState(() {
                                          tabIndex = 5;
                                          tabRefresh = true;

                                          stepsStatus[0].status = "completed";
                                          stepsStatus[1].status = "completed";
                                          stepsStatus[2].status = "completed";
                                          stepsStatus[3].status = "completed";
                                          stepsStatus[4].status = "completed";
                                          stepsStatus[5].status = "selected";
                                        });
                                      }),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
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
                                AppRouters.ENTRY_DETAIL_SCREEN);
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

  List<Widget> getTabDesigns() {
    var tabs = <Widget>[
      ProductScreen(),
      StyleScreen(),
      MaterialScreen(),
      FeatureScreen(),
      SizeScreen(),
      BudgetScreen(),
    ];

    return tabs;
  }

  Widget getTabScreenAtPosition(int position) {
    switch (position) {
      case 0:
        return ProductScreen();
      case 1:
        return StyleScreen();
      case 2:
        return MaterialScreen();
      case 3:
        return FeatureScreen();
      case 4:
        return SizeScreen();
      case 5:
        return BudgetScreen();
      default:
        return ProductScreen();
    }
  }
}
