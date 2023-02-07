import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeTest extends StatefulWidget {
  const ThemeTest({Key? key}) : super(key: key);

  @override
  State<ThemeTest> createState() => _ThemeTestState();
}

class _ThemeTestState extends State<ThemeTest> {
  bool is_darkTheme = true;
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
          body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                    child: Center(child: Text("Test")),
                    decoration: BoxDecoration(color: is_darkTheme ? Colors.amber : Colors.black12),
                    ),
              ),
              FloatingActionButton(onPressed: (){setState(() {
                is_darkTheme = !is_darkTheme;
              });},child: Text("press"),backgroundColor: Colors.blueGrey),
              Expanded(
                child: Container(
                    child: Center(child: Text("Test")),
                    decoration: BoxDecoration(color: Colors.blueAccent),
                    height: MediaQuery.of(context).size.height / 3),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
