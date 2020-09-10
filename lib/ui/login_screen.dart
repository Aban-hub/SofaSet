import 'package:flutter/material.dart';
import 'package:kundenberatung/routers/routers.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: new AssetImage("assets/images/ic_background.jpeg"),
            fit: BoxFit.cover,
          )),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Container(
                  height: 200.0,
                  width: 400.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 1,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                "LOG IN",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Container(
                                height: 3.0,
                                width: 25.0,
                                color: Color(0xff002646),
                              ),
                            ],
                          ),
                        ],
                      ),
                      TextField(
                        maxLength: 20,
                        decoration: InputDecoration(
                            counter: Offstage(),
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 0,
                              horizontal: 0,
                            ),
                            helperText: "User (Intranet)"),
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FloatingActionButton(
                            child: Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed(
                                  AppRouters.DASHBOARD_SCREEN);
                            },
                            backgroundColor: Color(0xff002646),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
