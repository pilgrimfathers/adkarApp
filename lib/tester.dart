import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class tester extends StatefulWidget {
  const tester({Key? key}) : super(key: key);

  @override
  State<tester> createState() => _testerState();
}

class _testerState extends State<tester> {
  @override
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
              ], child: Image(image: AssetImage('lib/assets/homeui.png'))),
              SizedBox(height: 50),
              Animate(effects: [ShakeEffect()],child: Text("ADHKAR"))
            ],
          ))),
    );
  }
}
