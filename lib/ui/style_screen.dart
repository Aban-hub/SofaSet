import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StyleScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StyleScreenState();
}

class StyleScreenState extends State<StyleScreen> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
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
                    height: 350.0,
                    enlargeCenterPage: true,
                    viewportFraction: 0.65,
                    aspectRatio: 14 / 13,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
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
        ),
      ],
    );
  }
}
