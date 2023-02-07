import 'dart:async';

import 'package:adhakr/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(color: Colors.black12),
          padding: const EdgeInsets.all(70),
          child: Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Animate(effects: const [
                    FadeEffect(
                        curve: Curves.bounceOut, duration: Duration(seconds: 4))
                  ], child: Image(image: AssetImage('lib/assets/images/homeui.png'))),
                  SizedBox(height: 50),
                  Animate(effects: [ShakeEffect()],child: Text("ADHKAR"))
                ],
              ))),
    );
  }
}
