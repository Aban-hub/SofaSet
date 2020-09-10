import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MaterialScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MaterialScreenState();
}

class MaterialScreenState extends State<MaterialScreen> {
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    TextEditingController _textController = TextEditingController();

    return Column(
      children: [
        Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Colors.grey[800],
                ),
                onPressed: () => buttonCarouselController.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear)),
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
                  'assets/images/img_sample_material1.png',
                  'assets/images/img_sample_material2.png',
                  'assets/images/img_sample_material1.png',
                  'assets/images/img_sample_material2.png',
                  'assets/images/img_sample_material1.png',
                  'assets/images/img_sample_material2.png',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        // margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage(i), fit: BoxFit.fill)),
                        child: Text(""),
                      ); // child: Image.asset(i, fit: BoxFit.fill));
                    },
                  );
                }).toList(),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: Colors.grey[800],
                ),
                onPressed: () => buttonCarouselController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear)),
          ],
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, left: 40, right: 40),
          child: Container(
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
                    maxLines: 6,
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
        ),
      ],
    );
  }
}
