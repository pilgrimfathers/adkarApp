import 'package:adhakr/home.dart';
import 'package:adhakr/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dikr extends StatefulWidget {
  const dikr({Key? key}) : super(key: key);

  @override
  State<dikr> createState() => _dikrState();
}

class _dikrState extends State<dikr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4d91cc),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 20),
        child: ListView(children: [
          IconButton(
            padding: EdgeInsets.only(bottom: 30, left: 20),
            alignment: AlignmentDirectional.topStart,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            icon: const Icon(Icons.home, color: Colors.white),
          ),
          CarouselSlider(
              items: const [DikrCont(), DikrCont(), DikrCont()],
              options: CarouselOptions(
                pauseAutoPlayInFiniteScroll: true,
                autoPlayInterval: const Duration(days: 4),
                disableCenter: false,
                height: MediaQuery.of(context).size.height / 1.5,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ))
        ]),
      ),
    );
  }
}
