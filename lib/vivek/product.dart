import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kundenberatung/helpers/strings.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    TextEditingController _textController = TextEditingController();

    return SafeArea(
      child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/ic_background_opacity.jpeg"), fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(StringConstants.appbarTitle, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 18,),),
              // centerTitle: true,
              titleSpacing: 250.0,

              leading: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: IconButton(
                        icon: Image.asset('assets/images/ic_menu.png', height: 40, width: 40, fit: BoxFit.fill),
                        onPressed: () {}
                    ),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 80),
                  child: Center(child: Text(StringConstants.appbarTrailing, style: TextStyle(fontSize: 18, color: Colors.grey),)),
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
                              height: MediaQuery.of(context).size.height*0.63,
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
                                            height: 250.0,
                                            enlargeCenterPage: true,
                                            viewportFraction: 0.5,
                                            aspectRatio: 2.0,
                                            initialPage: 0,
                                            enableInfiniteScroll: false,
                                          ),

                                          carouselController: buttonCarouselController,
                                          items: [
                                            'assets/images/img_sample1.png',
                                            'assets/images/img_sample2.png',
                                            'assets/images/img_sample1.png',
                                            'assets/images/img_sample2.png',
                                            'assets/images/img_sample1.png',
                                            'assets/images/img_sample2.png',
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
                                    padding: const EdgeInsets.only(top: 30, bottom: 20, left: 40, right: 40),
                                    child: TextField(
                                        maxLines: 7,
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
                              height: 133,
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      myButton("Produkt", true),

                                      myButton("Stil", false),

                                      myButton("Bezug", false),
                                    ],
                                  ),

                                  SizedBox(height: 30,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      myButton("Funktionen", false),

                                      myButton("MaBe", false),

                                      myButton("Budget", false),
                                    ],
                                  ),

                                  SizedBox(height: 3,),
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
                            child: Column(
                              // shrinkWrap: true,
                              children: [
                                addProduct("Produkt"),
                                Divider(thickness: 1, color: Colors.grey[600],),

                                addProduct("Stil"),
                                Divider(thickness: 1, color: Colors.grey[600],),

                                addProduct("Bezug"),
                                Divider(thickness: 1, color: Colors.grey[600],),

                                addProduct("Funktionen"),
                                Divider(thickness: 1, color: Colors.grey[600],),

                                addProduct("MaBe"),
                                Divider(thickness: 1, color: Colors.grey[600],),

                                addProduct("Budget"),
                              ],
                            ),
                          ),

                          SizedBox(height: 30,),

                          myButtonWithBorder("Kundendaten"),
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
            minHeight: 25,
            maxHeight: 45
          ),
          child: Container(
            color: Colors.white,
            child: Container(),
          ),
        )
      ],
    );
  }

  myButton(String txt, bool isSelected){
    Color mycolor = Colors.white;
    if(isSelected) {
      return ButtonTheme(
        height: 50,
        minWidth: 190,
        child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Color(0xFF112948),
            onPressed: (){
              mycolor = Colors.blue;
            },
            child: Text(txt, style: TextStyle(color: Colors.white),)
        ),
      );
    } else {
      return ButtonTheme(
        height: 50,
        minWidth: 190,
        child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
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

  myButtonWithBorder(String txt){
    Color mycolor = Colors.white;
    return ButtonTheme(
      height: 50,
      minWidth: 190,
      child: MaterialButton(
        elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
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
