import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kundenberatung/helpers/strings.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  // String appbarTrailing = "MAINE FAVORITEN";
  // String appbarTitle = "PRODUKTAUSWAHL";

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    TextEditingController _textController = TextEditingController();

    return SafeArea(
      child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/background.jpeg"), fit: BoxFit.cover)),
          child: Scaffold(
            // backgroundColor: Colors.white70,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(StringConstants.appbarTitle, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 20,),),
              // centerTitle: true,
              titleSpacing: 200.0,

              leading: Padding(
                padding: EdgeInsets.zero,
                child: IconButton(
                  icon: Image.asset('assets/images/Group27.png', height: 100, width: 100, fit: BoxFit.cover),
                  onPressed: () {}
                ),
              ),
              leadingWidth: 100.0,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Center(child: Text(StringConstants.appbarTrailing, style: TextStyle(fontSize: 20, color: Colors.grey),)),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Container(
                              child: Column(
                                children: [

                                  Row(
                                    children: [
                                      IconButton(
                                          icon: Icon(Icons.arrow_back_ios, size: 30, color: Colors.grey[800],),
                                          onPressed: () => buttonCarouselController.previousPage(
                                              duration: Duration(milliseconds: 300), curve: Curves.linear)
                                      ),
                                      Expanded(
                                        child: CarouselSlider(

                                          options: CarouselOptions(
                                            height: 200.0,
                                            enlargeCenterPage: true,
                                            viewportFraction: 0.5,
                                            aspectRatio: 2.0,
                                            initialPage: 2,
                                            enableInfiniteScroll: false,
                                          ),

                                          carouselController: buttonCarouselController,
                                          items: [
                                            'assets/images/asset-2.png',
                                            'assets/images/asset-3.png',
                                            'assets/images/7091_FM_2792_CS_1355668_02.png',
                                            'assets/images/asset-2.png',
                                            'assets/images/asset-3.png',
                                            'assets/images/7091_FM_2792_CS_1355668_02.png',
                                          ].map((i) {
                                            return Builder(
                                              builder: (BuildContext context) {
                                                return Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    // margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      color: Colors.grey,
                                                      image: DecorationImage(image: AssetImage(i), fit: BoxFit.fill)
                                                    ),
                                                    child: Text(""),
                                                ); // child: Image.asset(i, fit: BoxFit.fill));
                                              },
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      IconButton(
                                          icon: Icon(Icons.arrow_forward_ios, size: 30, color: Colors.grey[800],),
                                          onPressed: () => buttonCarouselController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear)
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                                    child: TextField(
                                        maxLines: 6,
                                        autofocus: false,
                                        style:new TextStyle(fontSize: 14.0, color: Color(0xFFbdc6cf)),
                                        controller: _textController,
                                        decoration: InputDecoration(
                                          hintText: 'Notizen',
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: new BorderSide(color: Colors.white),
                                            borderRadius: new BorderRadius.circular(20),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: new BorderSide(color: Colors.white),
                                            borderRadius: new BorderRadius.circular(20),
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              height: 115,
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      myButton("Produkt"),

                                      myButton("Stil"),

                                      myButton("Bezug"),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      myButton("Funktionen"),

                                      myButton("MaBe"),

                                      myButton("Budget"),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ),

                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                            height: MediaQuery.of(context).size.height*0.7,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: ListView(
                              // shrinkWrap: true,
                              children: [
                                addProduct("Produkt"),
                                Divider(thickness: 1, color: Colors.grey[700],),

                                addProduct("Stil"),
                                Divider(thickness: 1, color: Colors.grey[700],),

                                addProduct("Bezug"),
                                Divider(thickness: 1, color: Colors.grey[700],),

                                addProduct("Funktionen"),
                                Divider(thickness: 1, color: Colors.grey[700],),

                                addProduct("MaBe"),
                                Divider(thickness: 1, color: Colors.grey[700],),

                                addProduct("Budget"),
                                Divider(thickness: 1, color: Colors.grey[700],),
                              ],
                            ),
                          ),

                          SizedBox(height: 30,),

                          myButton("Kundendaten"),
                        ],
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }

  addProduct(String label){
    return Column(
      children: [
        Text(label, style: TextStyle(color: Colors.grey),),
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 50,
            maxHeight: 80
          ),
          child: Container(
            color: Colors.grey,
            child: Container(),
          ),
        )
      ],
    );
  }

  myButton(String txt){
    Color mycolor = Colors.white;
    return ButtonTheme(
      height: 50,
      minWidth: 200,
      child: MaterialButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.grey)
          ),
          color: mycolor,
          onPressed: (){
            mycolor = Colors.blue;
          },
          child: Text(txt)
      ),
    );
  }

}
