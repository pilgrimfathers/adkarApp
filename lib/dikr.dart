import 'package:adhakr/widgets.dart';
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
      backgroundColor: Color(0xff4d91cc),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [DikrCont(), DikrCont()],
        ),
      ),
    );
  }
}
