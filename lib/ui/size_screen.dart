import 'package:flutter/material.dart';

class SizeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SizeScreenState();
}

class SizeScreenState extends State<SizeScreen> {
  double rotation = 3.15;
  String changeRadio = "1";
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Column(
                    children: [

                      Container(
                        width: MediaQuery.of(context).size.width * 0.14,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "max.Breite",
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 10,),

                      Row(
                        children: [

                          SizedBox(width: 50,),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.14,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "max.Breite",
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                  ),
                                )
                              ],
                            ),
                          ),

                          Expanded(
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(rotation),
                                child: Image.asset('assets/images/img_sample_size.jpeg',
                                    height: 100, width: 100, fit: BoxFit.fitHeight),
                              ),
                              //Image.network('https://picsum.photos/250?image=9',),
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * 0.14,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "max.Breite",
                                    style: TextStyle(fontSize: 14.0),
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(contentPadding: const EdgeInsets.all(0)),
                                  ),
                                )
                              ],
                            ),
                          ),

                          SizedBox(width: 50,),
                        ],
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width * 0.14,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "max.Breite",
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 3,
                            child: RadioListTile(
                              groupValue: changeRadio,
                              title: Text(
                                'Spiegein',
                                style: TextStyle(fontSize: 14),
                              ),
                              value: '1',
                              onChanged: (val) {
                                setState(() {
                                  rotation = 3.15;
                                  changeRadio = val;
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              groupValue: changeRadio,
                              title: Text(
                                'Spiegein',
                                style: TextStyle(fontSize: 14),
                              ),
                              value: '0',
                              onChanged: (val) {
                                setState(() {
                                  rotation = 3.15;
                                  changeRadio = val;
                                });
                              },
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Container(
            padding: const EdgeInsets.all(10),
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
                    maxLines: 5,
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

          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}