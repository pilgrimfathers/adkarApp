import 'package:adhakr/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4d91cc),
      body: Align(
        alignment: Alignment.center,
        child: ListView(children: [
          CarouselSlider(
              items: [DikrCont(), DikrCont(), DikrCont()],
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 1.5,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ))
        ]),
      ),
    );
  }
}
