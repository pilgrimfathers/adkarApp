import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DikrCont extends StatefulWidget {
  const DikrCont({Key? key}) : super(key: key);

  @override
  State<DikrCont> createState() => _DikrContState();
}

class _DikrContState extends State<DikrCont> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 1.1,
          child: Text(
            "dikr",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}


